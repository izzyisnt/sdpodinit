#!/usr/bin/env python3
import sys
from Bio.PDB import PDBParser

if len(sys.argv) != 3:
    sys.exit("Usage: extract_ligand_from_pdb.py <complex.pdb> <LIG_RESNAME>")

pdb_file, resname = sys.argv[1], sys.argv[2].upper()
parser = PDBParser(QUIET=True)
structure = parser.get_structure("X", pdb_file)

coords = []
for atom in structure.get_atoms():
    if atom.get_parent().get_resname().strip() == resname:
        coords.append(atom.get_coord())

if not coords:
    sys.exit(f"❌ No atoms of residue {resname} found in {pdb_file}")

with open("ligand_coords.csv", "w") as out:
    for x, y, z in coords:
        out.write(f"{x:.3f},{y:.3f},{z:.3f}\n")

print("✅ ligand_coords.csv written.")

