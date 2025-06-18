#!/usr/bin/env python3
"""
align_35b_to_7yl1.py ── shape-align 35b.sdf onto native ligand in 7yl1.pdb

Assumes:
  - 35b.sdf is a standalone ligand (no protein frame)
  - 7yl1.pdb contains a bound ligand (correct RESN autodetected)

Output:
  - 35b_in_7yl1.sdf  (same frame as 7yl1, aligned into binding site)
  - overlay RMSD is printed to console

Requires:
  - RDKit
"""
from rdkit import Chem
from rdkit.Chem import rdMolAlign, AllChem
from pathlib import Path
import sys

# --- Config ---
pdb_path = Path("7yl1.pdb")
sdf_path = Path("35b.sdf")
out_sdf = Path("35b_in_7yl1.sdf")

# --- Step 1: Extract largest HETATM ligand from 7yl1.pdb ---
lig_blocks = {}
with open(pdb_path) as fh:
    for line in fh:
        if line.startswith("HETATM") and line[17:20].strip() not in {"HOH", "WAT"}:
            resn = line[17:20].strip()
            lig_blocks.setdefault(resn, []).append(line)

if not lig_blocks:
    sys.exit("No ligand found in 7yl1.pdb")

# Pick the largest ligand by atom count
resn = max(lig_blocks, key=lambda k: len(lig_blocks[k]))
print(f"Using template ligand: {resn}")
block = "".join(lig_blocks[resn])
templ = Chem.MolFromPDBBlock(block, sanitize=False, removeHs=False)
Chem.SanitizeMol(templ)
Chem.GetSymmSSSR(templ)
templ.UpdatePropertyCache(strict=False)

# --- Step 2: Load 35b.sdf and prepare ---
probe = Chem.MolFromMolFile(str(sdf_path), removeHs=False)
if probe is None:
    sys.exit("Could not read 35b.sdf")
if probe.GetNumConformers() == 0:
    AllChem.EmbedMolecule(probe, randomSeed=0xC0FFEE)
AllChem.UFFOptimizeMolecule(probe)

# --- Step 3: Align ---
o3a = rdMolAlign.GetO3A(probe, templ)
rms = o3a.Align()
print(f"Overlay RMSD: {rms:.2f} Å")

# --- Step 4: Write result ---
Chem.MolToMolFile(probe, str(out_sdf))
print(f"✅ Aligned ligand written: {out_sdf}")
