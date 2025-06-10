#!/usr/bin/env python3
import sys
from rdkit import Chem
from rdkit.Chem import AllChem

ligand_path = sys.argv[1]
suppl = Chem.SDMolSupplier(ligand_path, removeHs=True)
mols = [m for m in suppl if m is not None]
if not mols:
    sys.exit(f"❌ No valid molecules found in {ligand_path}")
mol = mols[0]

# Ensure we have a 3D conformer
if mol.GetNumConformers() == 0:
    print("⚠️ No conformer found, generating 3D structure…")
    mol = Chem.AddHs(mol)
    AllChem.EmbedMolecule(mol)
    AllChem.UFFOptimizeMolecule(mol)

conf = mol.GetConformer()
with open("ligand_coords.csv", "w") as f:
    for atom in mol.GetAtoms():
        pos = conf.GetAtomPosition(atom.GetIdx())
        f.write(f"{pos.x:.3f},{pos.y:.3f},{pos.z:.3f}\n")

print("✅ ligand_coords.csv written.")

