# transform_sdf.py
import sys
from rdkit import Chem
from rdkit.Chem import AllChem
import numpy as np

mol = Chem.SDMolSupplier(sys.argv[1], removeHs=True)[0]
conf = mol.GetConformer()
# compute ligand centroid
pts = np.array([conf.GetAtomPosition(i) for i in range(mol.GetNumAtoms())])
centroid = pts.mean(axis=0)
# desired pocket center
target = np.array([30.493, 29.907, 16.974])
shift = target - centroid

for i in range(mol.GetNumAtoms()):
    x,y,z = conf.GetAtomPosition(i)
    conf.SetAtomPosition(i, (x+shift[0], y+shift[1], z+shift[2]))

w = Chem.SDWriter("ligand_transformed.sdf")
w.write(mol); w.close()
print("✅ ligand_transformed.sdf written.")

