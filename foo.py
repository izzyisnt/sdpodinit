
#!/usr/bin/env python3
"""auto_surfdock_ligand.py – IUPAC → aligned SurfDock ligand

Quick use
---------
python auto_surfdock_ligand.py \
  --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone" \
  --protein 7yl1.pdb \
  --prefix 7yl1  --template-resn J6F

Creates `<prefix>_ligand.sdf/.mol2` aligned to the native ligand and copies
into SurfDock/data/eval_sample_dirs/test_samples/<prefix>/

Deps: RDKit, Open Babel (obabel), optional gemmi (if protein is .cif)
"""
from __future__ import annotations
import argparse, subprocess, tempfile, pathlib, shutil, sys, re
from typing import Tuple
from rdkit import Chem
from rdkit.Chem import AllChem, rdMolAlign, rdFMCS

###############################################################################
# Helper functions                                                             
###############################################################################

def iupac_to_smiles(iupac: str) -> str:
    """Convert an IUPAC name to SMILES using Open Babel (handles OB-3 and OB-2)."""
    cmds = [
        ["obabel", f"-:{iupac}", "-osmi", "--errorlevel", "1"],              # OB-3 inline syntax
        ["obabel", "-i", "name", iupac, "-osmi", "--errorlevel", "1"]        # OB-2 classic syntax
    ]
    for cmd in cmds:
        try:
            out = subprocess.check_output(cmd, text=True, stderr=subprocess.DEVNULL)
            if not out.strip():
                continue  # empty -> try next
            smiles_line = out.strip().split("\n")[-1]
            tokens = smiles_line.split()
            if tokens:
                return tokens[0]
        except subprocess.CalledProcessError:
            continue
    sys.exit("❌ Open Babel could not convert IUPAC → SMILES. Is `obabel` in PATH?")


def smiles_to_sdf(smiles: str, out_path: pathlib.Path) -> pathlib.Path:
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

###############################################################################
# Protein & template extraction                                                
###############################################################################

def ensure_pdb(path: pathlib.Path) -> pathlib.Path:
    if path.suffix.lower() in {".pdb", ".ent"}:
        return path
    if path.suffix.lower() in {".cif", ".mmcif"}:
        try:
            import gemmi  # noqa
        except ImportError:
            sys.exit("❌ gemmi needed for CIF conversion (`pip install gemmi`)")
        tmp = pathlib.Path(tempfile.mkstemp(suffix=".pdb")[1])
        subprocess.run(["gemmi", "convert", str(path), str(tmp)], check=True)
        return tmp
    sys.exit("❌ Protein must be .pdb / .cif / .mmcif")


def extract_template(pdb: pathlib.Path, override: str | None = None) -> Tuple[Chem.Mol, str]:
    het: dict[str, list[str]] = {}
    with open(pdb) as fh:
        for line in fh:
            if line.startswith("HETATM") and line[17:20].strip() not in {"HOH", "WAT"}:
                rn = line[17:20].strip()
                het.setdefault(rn, []).append(line)
    if not het:
        sys.exit("❌ No hetero-ligand found in protein file")
    chosen = override if override in het else max(het, key=lambda k: len(het[k]))
    if override and override not in het:
        print(f"[WARN] resn '{override}' not found; using '{chosen}'")
    templ = Chem.MolFromPDBBlock("".join(het[chosen]), sanitize=False, removeHs=False)
    Chem.SanitizeMol(templ)
    Chem.GetSymmSSSR(templ)
    templ.UpdatePropertyCache(False)
    return templ, chosen

###############################################################################
# Ligand overlay                                                               
###############################################################################

def overlay(probe_sdf: pathlib.Path, template: Chem.Mol) -> Tuple[pathlib.Path, float]:
    probe = Chem.MolFromMolFile(str(probe_sdf), removeHs=False)
    if probe is None:
        sys.exit("❌ RDKit failed to load probe SDF")
    try:
        mcs = rdFMCS.FindMCS([probe, template], ringMatchesRingOnly=True, completeRingsOnly=True, timeout=5)
        patt = Chem.MolFromSmarts(mcs.smartsString)
        amap = list(zip(probe.GetSubstructMatch(patt), template.GetSubstructMatch(patt)))
        if len(amap) >= 3:
            rms = rdMolAlign.AlignMol(probe, template, atomMap=amap)
        else:
            raise ValueError
    except Exception:
        print("[INFO] MCS small → falling back to O3A shape align …")
        o3a = rdMolAlign.GetO3A(probe, template)
        rms = o3a.Align()
    out_aligned = probe_sdf.with_name("aligned_" + probe_sdf.name)
    Chem.MolToMolFile(probe, str(out_aligned))
    return out_aligned, rms

###############################################################################
# Copy to SurfDock                                                             
###############################################################################

def copy_to_surfdock(sdf: pathlib.Path, prefix: str):
    dest = pathlib.Path("SurfDock/data/eval_sample_dirs/test_samples") / prefix
    dest.mkdir(parents=True, exist_ok=True)
    shutil.copy2(sdf, dest / f"{prefix}_ligand.sdf")
    mol2 = dest / f"{prefix}_ligand.mol2"
    try:
        subprocess.run(["obabel", str(sdf), "-O", str(mol2), "--partialcharge", "gasteiger", "-xh"], check=True)
    except subprocess.CalledProcessError:
        print("⚠️  Open Babel MOL2 conversion failed; SDF only")
    print(f"✅ SurfDock inputs ready in {dest}")

###############################################################################
# Main                                                                         
###############################################################################

def main():
    ap = argparse.ArgumentParser("Generate aligned SurfDock ligand from IUPAC name")
    ap.add_argument("--iupac", required=True, help="IUPAC name in quotes")
    ap.add_argument("--protein", required=True, type=pathlib.Path)
    ap.add_argument("--prefix", required=True, help="SurfDock sample ID, e.g. 7yl1")
    ap.add_argument("--template-resn", help="force template residue name (optional)")
    args = ap.parse_args()

    smiles = iupac_to_smiles(args.iupac)
    print("IUPAC → SMILES:", smiles)
    sdf_tmp = pathlib.Path(tempfile.mkstemp(suffix=".sdf")[1])
    smiles_to_sdf(smiles, sdf_tmp)

    pdb = ensure_pdb(args.protein)
    templ, resn = extract_template(pdb, args.template_resn)
    print("Template ligand:", resn)

    aligned_sdf, rms = overlay(sdf_tmp, templ)
    print(f"Overlay RMSD: {rms:.2f} Å")

    copy_to_surfdock(aligned_sdf, args.prefix)

if __name__ == "__main__":
    main()
