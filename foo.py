#!/usr/bin/env python3
"""auto_surfdock_ligand.py ── from IUPAC → aligned SurfDock input

CLI
---
python auto_surfdock_ligand.py \
    --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone" \
    --protein 7yl1.pdb \
    --prefix 7yl1              # SurfDock test_sample folder name
    [--template-resn J6F]       # optional override

What it does
------------
1. Converts the **IUPAC name → SMILES** (Open Babel)
2. Builds an RDKit mol, embeds 3‑D, minimises.
3. Extracts the *native ligand* from the protein (largest HETATM or --template-resn).
4. Shape‑aligns the new ligand onto that native ligand (RDKit O3A fallback).
5. Writes `<prefix>_ligand.sdf` **in protein frame**.
6. Generates `<prefix>_ligand.mol2` with Gasteiger charges (Open Babel).
7. Copies both to:
   SurfDock/data/eval_sample_dirs/test_samples/<prefix>/

Dependencies: RDKit, Open Babel (`obabel` CLI), optionally gemmi (for CIF→PDB).
"""
from __future__ import annotations
import argparse, subprocess, tempfile, pathlib, shutil, sys, re
from typing import Tuple

from rdkit import Chem
from rdkit.Chem import AllChem, rdMolAlign, rdFMCS

###############################################################################
# Helpers                                                                     #
###############################################################################

def iupac_to_smiles(iupac: str) -> str:
    """Use Open Babel to convert an IUPAC string to SMILES."""
    try:
        out = subprocess.check_output(["obabel", "-i", "name", iupac, "-osmi", "--errorlevel", "1"], text=True)
    except FileNotFoundError:
        sys.exit("❌ Open Babel (obabel) not found – cannot convert IUPAC to SMILES.")
    smiles_line = out.strip().split("\n")[-1]
    smi = smiles_line.split()[0]
    if not re.match(r"[A-Za-z0-9@+\-\[\]\(\)=#$%.]+", smi):
        sys.exit("❌ Failed to parse SMILES from Open Babel output")
    return smi


def smiles_to_optimised_sdf(smiles: str, out_path: pathlib.Path) -> pathlib.Path:
    mol = Chem.MolFromSmiles(smiles)
    if mol is None:
        sys.exit("❌ RDKit failed to parse SMILES")
    mol = Chem.AddHs(mol)
    AllChem.EmbedMolecule(mol, randomSeed=0xC0FFEE)
    try:
        AllChem.MMFFOptimizeMolecule(mol)
    except Exception:
        AllChem.UFFOptimizeMolecule(mol)
    mol = Chem.RemoveHs(mol)
    Chem.MolToMolFile(mol, str(out_path))
    return out_path

# ----------------- protein & ligand extraction ------------------------------

def ensure_pdb(path: pathlib.Path) -> pathlib.Path:
    if path.suffix.lower() in {".pdb", ".ent"}:
        return path
    if path.suffix.lower() in {".cif", ".mmcif"}:
        try:
            import gemmi  # noqa: F401
        except ImportError:
            sys.exit("❌ gemmi required for CIF → PDB conversion. `pip install gemmi`.")
        pdb_tmp = pathlib.Path(tempfile.mkstemp(suffix=".pdb")[1])
        subprocess.run(["gemmi", "convert", str(path), str(pdb_tmp)], check=True)
        return pdb_tmp
    sys.exit("❌ Protein file must be .pdb / .cif / .mmcif")


def extract_template(pdb: pathlib.Path, resn_override: str | None = None) -> Tuple[Chem.Mol, str]:
    het_records: dict[str, list[str]] = {}
    with open(pdb) as fh:
        for line in fh:
            if not line.startswith("HETATM"):
                continue
            rn = line[17:20].strip()
            if rn in {"HOH", "WAT"}:
                continue
            het_records.setdefault(rn, []).append(line)
    if not het_records:
        sys.exit("❌ No ligand found in protein file")
    chosen = resn_override if resn_override in het_records else max(het_records, key=lambda k: len(het_records[k]))
    if resn_override and resn_override not in het_records:
        print(f"[WARN] requested resn '{resn_override}' not present, using '{chosen}' instead")
    block = "".join(het_records[chosen])
    templ = Chem.MolFromPDBBlock(block, sanitize=False, removeHs=False)
    Chem.SanitizeMol(templ)
    Chem.GetSymmSSSR(templ)
    templ.UpdatePropertyCache(False)
    return templ, chosen

# ------------------ overlay --------------------------------------------------

def overlay(probe_sdf: pathlib.Path, template: Chem.Mol) -> Tuple[pathlib.Path, float]:
    probe = Chem.MolFromMolFile(str(probe_sdf), removeHs=False)
    if probe is None:
        sys.exit("❌ Cannot read probe ligand")
    # try MCS first
    try:
        mcs = rdFMCS.FindMCS([probe, template], ringMatchesRingOnly=True, completeRingsOnly=True, timeout=5)
        patt = Chem.MolFromSmarts(mcs.smartsString)
        ref_match = template.GetSubstructMatch(patt)
        probe_match = probe.GetSubstructMatch(patt)
        if len(ref_match) >= 3:
            rms = rdMolAlign.AlignMol(probe, template, atomMap=list(zip(probe_match, ref_match)))
        else:
            raise ValueError
    except Exception:
        print("[INFO] fallback to O3A shape align …")
        o3a = rdMolAlign.GetO3A(probe, template)
        rms = o3a.Align()
    out_aligned = probe_sdf.with_name("aligned_" + probe_sdf.name)
    Chem.MolToMolFile(probe, str(out_aligned))
    return out_aligned, rms

# ----------------- copy to SurfDock -----------------------------------------

def copy_to_surfdock(sdf_path: pathlib.Path, protein_prefix: str):
    target_dir = pathlib.Path("SurfDock/data/eval_sample_dirs/test_samples") / protein_prefix
    target_dir.mkdir(parents=True, exist_ok=True)
    shutil.copy2(sdf_path, target_dir / f"{protein_prefix}_ligand.sdf")
    # mol2 conversion
    mol2_path = target_dir / f"{protein_prefix}_ligand.mol2"
    try:
        subprocess.run(["obabel", str(sdf_path), "-O", str(mol2_path), "--partialcharge", "gasteiger", "-xh"], check=True)
    except subprocess.CalledProcessError:
        print("⚠️  Open Babel failed to create MOL2 – SDF copied only")
    print(f"✅ Copied SurfDock inputs to {target_dir}")

###############################################################################
# Main                                                                         
###############################################################################

def main():
    ap = argparse.ArgumentParser("Generate aligned SurfDock ligand from IUPAC name")
    ap.add_argument("--iupac", required=True, help="IUPAC name in quotes")
    ap.add_argument("--protein", required=True, type=pathlib.Path, help="Protein PDB or mmCIF containing template ligand")
    ap.add_argument("--prefix", required=True, help="SurfDock sample folder name, e.g. 7yl1")
    ap.add_argument("--template-resn", help="Optional residue name to force as template")
    args = ap.parse_args()

    smiles = iupac_to_smiles(args.iupac)
    print("IUPAC → SMILES:", smiles)
    sdf_temp = pathlib.Path(tempfile.mkstemp(suffix=".sdf")[1])
    smiles_to_optimised_sdf(smiles, sdf_temp)

    pdb_path = ensure_pdb(args.protein)
    templ_mol, chosen = extract_template(pdb_path, args.template_resn)
    print("Template ligand used:", chosen)

    aligned_sdf, rms = overlay(sdf_temp, templ_mol)
    print(f"Overlay RMSD: {rms:.2f} Å")

    copy_to_surfdock(aligned_sdf, args.prefix)

if __name__ == "__main__":
    main()
