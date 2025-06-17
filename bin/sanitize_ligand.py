#!/usr/bin/env python3
"""
sanitize_ligand.py – v1.4.0 · 2025‑06‑16
• Simplify: drop hard template exit; always apply aromatic perception to rings
• If template is given and mapping succeeds, use it; if fails, warn but continue
• Clean up aromatic rings via SetAromaticity + Kekulize in clean_mol
• Retain RCSB fetch for curated templates, but do not exit on failure
"""
from __future__ import annotations

import argparse, logging, math, shutil, subprocess, sys, time, urllib.request, tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Sequence
from rdkit import Chem
from rdkit.Chem import AllChem
from rdkit.Chem.MolStandardize import rdMolStandardize as ms

# -------------------------------------------------- dataclass
@dataclass
class Settings:
    output: Path | None = None
    name: str | None = None
    add_h: bool = True
    overwrite: bool = False
    quiet: bool = False
    verbose: bool = True
    template: Path | None = None

# -------------------------------------------------- logging helper
def setup_logger(*, verbose: bool, quiet: bool):
    lvl = logging.DEBUG if verbose else logging.ERROR if quiet else logging.INFO
    logging.basicConfig(level=lvl, format="%(levelname).1s │ %(message)s")

# -------------------------------------------------- fetch helper
def fetch_rcsb(code: str) -> Path | None:
    url = f"https://files.rcsb.org/ligands/view/{code.upper()}_ideal.sdf"
    dst = Path(tempfile.gettempdir()) / f"{code}_ideal.sdf"
    try:
        urllib.request.urlretrieve(url, dst)
        logging.info(f"Fetched RCSB ligand to {dst}")
        return dst
    except Exception as e:
        logging.warning(f"RCSB fetch failed: {e}")
        return None

# -------------------------------------------------- core helpers

def read_mol(path: str | Path, settings: Settings) -> Chem.Mol:
    path = Path(path)
    suppl = Chem.SDMolSupplier(str(path), removeHs=not settings.add_h, sanitize=False)
    mol = None
    if suppl:
        mol = suppl[0]
    if mol is None:
        logging.error(f"RDKit failed to parse molecule from {path}")
        sys.exit(1)
    name = settings.name or path.stem
    mol.SetProp("_Name", name)
    logging.info(f"Read '{mol.GetProp('_Name')}' ({mol.GetNumAtoms()} atoms) in {path.stat().st_size / 1024:.2f}KB")
    return mol


def apply_template(mol: Chem.Mol, template_path: Path) -> Chem.Mol:
    ref_raw = Chem.MolFromMolFile(str(template_path), removeHs=False, sanitize=False)
    if ref_raw is None:
        logging.warning(f"Template failed to load: {template_path}")
        return mol
    lig_atoms = mol.GetNumAtoms()
    frags = Chem.GetMolFrags(ref_raw, asMols=True, sanitizeFrags=False)
    best = min(frags, key=lambda m: abs(m.GetNumAtoms() - lig_atoms))
    logging.debug(f"Template fragments: {[m.GetNumAtoms() for m in frags]}; selected {best.GetNumAtoms()}-atom fragment")
    if abs(best.GetNumAtoms() - lig_atoms) > lig_atoms:
        logging.warning("No fragment size close to ligand → skipping template mapping")
        return mol
    ref_noH = Chem.RemoveHs(best)
    probe = Chem.RemoveHs(mol)
    for m in (ref_noH, probe):
        try:
            Chem.Kekulize(m, clearAromaticFlags=True)
        except Exception:
            pass
    if not probe.HasSubstructMatch(ref_noH):
        logging.warning("Template mapping failed: no substructure match after H-strip")
        return mol
    try:
        mapped_noH = AllChem.AssignBondOrdersFromTemplate(ref_noH, probe)
        mapped = AllChem.AssignBondOrdersFromTemplate(mapped_noH, mol)
        logging.info(f"Template mapping succeeded: {ref_noH.GetNumAtoms()} atoms mapped; aromatic bonds transferred")
        return mapped
    except Exception as e:
        logging.warning(f"AssignBondOrdersFromTemplate failed: {e}")
        return mol


def clean_mol(mol: Chem.Mol) -> Chem.Mol:
    try:
        mol = ms.Cleanup(mol)
        logging.debug("RDKit Cleanup() applied")
    except Exception as e:
        logging.warning(f"Cleanup failed: {e}")
    # aromatic perception fallback
    try:
        Chem.SanitizeMol(mol)
        Chem.SetAromaticity(mol, Chem.AromaticityModel.AROMATICITY_DEFAULT)
        Chem.Kekulize(mol, clearAromaticFlags=True)
        logging.info("Aromatic rings perceived and kekulized")
    except Exception as e:
        logging.warning(f"Aromatic perception failed: {e}")
    # optional ChargeParent fallback
    try:
        mol = ms.ChargeParent().charge_parent(mol)
    except Exception:
        try:
            mol = ms.Uncharger().uncharge(mol)
        except Exception:
            pass
    try:
        Chem.SanitizeMol(mol)
    except Exception as e:
        logging.warning(f"SanitizeMol warning: {e}")
    # log formula and InChI
    try:
        formula = Chem.rdMolDescriptors.CalcMolFormula(mol)
        inchi = Chem.MolToInchi(mol)
        logging.info(f"Formula: {formula}")
        logging.info(f"InChI:   {inchi}")
    except Exception:
        pass
    return mol


def add_hydrogens_and_charges(mol: Chem.Mol, add_h: bool) -> Chem.Mol:
    if add_h:
        mol = Chem.AddHs(mol, addCoords=True)
        logging.debug("Hydrogens added")
    AllChem.ComputeGasteigerCharges(mol)
    qs = []
    for atom in mol.GetAtoms():
        if atom.HasProp('_GasteigerCharge'):
            q = float(atom.GetProp('_GasteigerCharge'))
            atom.SetProp("PartialCharge", f"{q:+.4f}")
            qs.append(q)
    if qs:
        logging.info(f"Charges: min={min(qs):+.3f} max={max(qs):+.3f} avg={sum(qs)/len(qs):+.3f} (n={len(qs)})")
    mol.SetProp("_atomProps", "PartialCharge")
    return mol


def write_outputs(mol: Chem.Mol, out_path: Path, overwrite: bool):
    if not overwrite and out_path.exists():
        logging.error(f"Output file exists: {out_path}")
        sys.exit(1)
    Chem.SDWriter(str(out_path)).write(mol)
    logging.info(f"Wrote {out_path.name}")
    mol2_path = out_path.with_suffix(".mol2")
    try:
        Chem.MolToMol2File(mol, str(mol2_path))
        logging.info(f"Wrote {mol2_path.name} via RDKit")
    except Exception:
        if shutil.which("obabel"):
            try:
                subprocess.run(["obabel", str(out_path), "-O", str(mol2_path)], check=True, capture_output=True)
                logging.info(f"Wrote {mol2_path.name} via Open Babel fallback")
            except Exception:
                logging.warning("Open Babel failed to write MOL2")
        else:
            logging.warning("MOL2 not written – RDKit lacks export and Open Babel unavailable")
    pml = out_path.with_suffix(".pml")
    with open(pml, "w") as fh:
        load_name = mol2_path.name if mol2_path.exists() else out_path.name
        fh.write(f"load {load_name}, ligand\n")
        fh.write("set label_position, [0, 0.3, 0]\n")
        fh.write("label all, partial_charge\n")
        fh.write("spectrum partial_charge, blue_white_red, minimum=-0.5, maximum=0.5\n")
    logging.info(f"Wrote PyMOL script: {pml.name}")

# -------------------------------------------------- CLI

def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="High‑quality ligand sanitiser – outputs clean SDF/MOL2 with charges")
    p.add_argument("input", help="Input ligand (SDF/MOL/PDB)")
    p.add_argument("-t", "--template", help="User‑supplied template SDF/MOL")
    p.add_argument("--rcsb", help="3‑letter/ID to fetch ideal SDF from RCSB as template")
    p.add_argument("-o", "--output", help="Output SDF path (default *_clean.sdf)")
    p.add_argument("--no-h", action="store_true", help="Skip hydrogen addition")
    p.add_argument("--overwrite", action="store_true", help="Overwrite existing files")
    p.add_argument("--quiet", action="store_true", help="Errors only")
    p.add_argument("--verbose", action="store_true", help="Debug logging")
    return p

# -------------------------------------------------- main

def main(argv: Sequence[str] | None = None):
    import rdkit
    print(f"RDKit {rdkit.__version__}\n")
    args = build_parser().parse_args(argv)
    settings = Settings(
        output=Path(args.output) if args.output else None,
        name=args.name if hasattr(args, "name") else None,
        add_h=not args.no_h,
        overwrite=args.overwrite,
        quiet=args.quiet,
        verbose=args.verbose or not args.quiet,
        template=Path(args.template) if args.template else None,
    )
    setup_logger(verbose=settings.verbose, quiet=settings.quiet)
    if args.rcsb and not settings.template:
        fetched = fetch_rcsb(args.rcsb)
        if fetched:
            settings.template = fetched
        else:
            logging.warning("Failed to fetch RCSB template; continuing without template")
    mol = read_mol(args.input, settings)
    if settings.template:
        mol_mapped = apply_template(mol, settings.template)
        if mol_mapped is not mol:
            mol = mol_mapped
        else:
            logging.warning("Template mapping failed; proceeding with aromatic perception only")
    mol = clean_mol(mol)
    mol = add_hydrogens_and_charges(mol, settings.add_h)
    out_path = settings.output or Path(f"{mol.GetProp('_Name')}_clean.sdf")
    write_outputs(mol, out_path, overwrite=settings.overwrite)
    logging.info(f"Finished: atoms={mol.GetNumAtoms()} bonds={mol.GetNumBonds()} charge={Chem.GetFormalCharge(mol)}")

if __name__ == "__main__":
    main()
