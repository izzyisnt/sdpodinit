#!/usr/bin/env python3
"""
xfer_bound_ligand.py  ── self-contained cross-dock helper
──────────────────────────────────────────────────────────
Usage
  python xfer_bound_ligand.py  REF.pdb  TARGET.pdb  TAG  [CHAIN]

TAG   =  numeric resid  (e.g. 589)
       | 3-letter resname (e.g. JZ5)
       | existing .sdf / .mol2 path (skips extraction)

Outputs
  TARGET_aligned.pdb      – target protein superposed onto reference frame
  ligand_in_target.sdf    – ligand now in TARGET frame
  ligand_in_target.mol2   – same, with Gasteiger charges (needs Open Babel)
  R_ref_to_tgt.npy        – rotation matrix (TARGET→REF)
  centroids.npy           – [ref_centroid, tgt_centroid]
"""

from __future__ import annotations
import sys, subprocess, tempfile, numpy as np, MDAnalysis as mda
from MDAnalysis.analysis.align import rotation_matrix
from pathlib import Path
from rdkit import Chem
from rdkit.Chem import AllChem

# ───────────────────────── helper: extract ligand ───────────────────────────
def extract_ligand_mda(pdb: str, tag: str, chain: str | None) -> str:
    """
    Try   1) resname TAG
          2) resid  TAG
    Return path to a temp SDF containing the selected ligand atoms.
    """
    u = mda.Universe(pdb)

    trials = [f"resname {tag}", f"resid {tag}"]
    for core in trials:
        sel = f"({core}) and not protein and not water"
        if chain:
            sel += f" and chainid {chain}"
        lig = u.select_atoms(sel)
        if lig.n_atoms:
            break
    else:
        sys.exit(f"❌ No atoms matched resname/resid '{tag}' in {pdb}")

    tmp_pdb = tempfile.NamedTemporaryFile(suffix=".pdb", delete=False)
    lig.write(tmp_pdb.name)

    mol = Chem.MolFromPDBFile(tmp_pdb.name, removeHs=False, sanitize=False)
    if mol is None:
        sys.exit("❌ RDKit failed to parse extracted ligand PDB block.")
    Chem.SanitizeMol(mol)

    # ⚠️ Preserve original coords; only embed if none present
    if mol.GetNumConformers() == 0:
        AllChem.EmbedMolecule(mol, useRandomCoords=True)

    tmp_sdf = Path(tmp_pdb.name).with_suffix(".sdf")
    Chem.MolToMolFile(mol, str(tmp_sdf))
    return str(tmp_sdf)

# ───────────────────────── helper: CA superpose ─────────────────────────────
def superpose_ca(ref_u, tgt_u):
    ref_ca = ref_u.select_atoms("protein and name CA")
    tgt_ca = tgt_u.select_atoms("protein and name CA")
    common = sorted(set(r.resid for r in ref_ca.residues)
                    & set(r.resid for r in tgt_ca.residues))
    if len(common) < 5:
        sys.exit("❌ Fewer than 5 shared CA residues.")
    ref_xyz = np.array([ref_ca.select_atoms(f"resid {r} and name CA")[0].position
                        for r in common])
    tgt_xyz = np.array([tgt_ca.select_atoms(f"resid {r} and name CA")[0].position
                        for r in common])
    c_ref, c_tgt = ref_xyz.mean(0), tgt_xyz.mean(0)
    R, rmsd = rotation_matrix(tgt_xyz - c_tgt, ref_xyz - c_ref)
    return R, rmsd, c_ref, c_tgt

# ─────────────────────────────────── main ────────────────────────────────────
def main():
    if len(sys.argv) not in (4, 5):
        sys.exit("Usage: xfer_bound_ligand.py  REF.pdb  TARGET.pdb  TAG  [CHAIN]")
    ref_pdb, tgt_pdb, tag, *opt = sys.argv[1:]
    chain = opt[0] if opt else None

    ref_u, tgt_u = mda.Universe(ref_pdb), mda.Universe(tgt_pdb)
    R, rmsd, c_ref, c_tgt = superpose_ca(ref_u, tgt_u)
    print(f"✅ Proteins superposed (RMSD {rmsd:.2f} Å over Cα)")

    # obtain ligand SDF
    lig_sdf = (tag if tag.lower().endswith((".sdf", ".mol2")) and Path(tag).exists()
               else extract_ligand_mda(ref_pdb, tag, chain))
    mol = Chem.MolFromMolFile(lig_sdf, removeHs=False)
    if mol is None:
        sys.exit("❌ RDKit failed to load ligand SDF.")
    conf = mol.GetConformer()

    # transform ligand into TARGET frame
    Rinv = R.T
    for i in range(mol.GetNumAtoms()):
        xyz = np.array(conf.GetAtomPosition(i))
        conf.SetAtomPosition(i, (xyz - c_ref) @ Rinv + c_tgt)
    Chem.MolToMolFile(mol, "ligand_in_target.sdf")
    print("✅ ligand_in_target.sdf written")

    # diagnostic aligned target
    tgt_u.atoms.positions = (tgt_u.atoms.positions - c_tgt) @ R + c_ref
    tgt_u.atoms.write("TARGET_aligned.pdb")
    print("ℹ️  TARGET_aligned.pdb saved")

    # optional MOL2 with charges
    try:
        subprocess.run(["obabel", "ligand_in_target.sdf", "-O",
                        "ligand_in_target.mol2",
                        "--partialcharge", "gasteiger", "-xh"],
                       stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
        print("🆗 ligand_in_target.mol2 (Gasteiger charges) written")
    except (FileNotFoundError, subprocess.CalledProcessError):
        print("⚠️  Open Babel not found – skipped MOL2")

    np.save("R_ref_to_tgt.npy", R)
    np.save("centroids.npy", np.vstack([c_ref, c_tgt]))
    print("📁 Saved transform matrices")

# ─────────────────────────────────────────────────────────────────────────────
if __name__ == "__main__":
    main()
