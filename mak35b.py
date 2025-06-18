from rdkit import Chem
from rdkit.Chem import AllChem

sm = ("O=C(C1CC1)N2CCC(CNC3=NC(=NC=C3)C4=NC=C(C(O)=C(O)N4)"
      "C5COC6=CC=CC=C6O5)CC2")
mol = Chem.MolFromSmiles(sm)
mol = Chem.AddHs(mol)
AllChem.EmbedMolecule(mol, randomSeed=0xf00d)
AllChem.MMFFOptimizeMolecule(mol)
Chem.MolToMolFile(mol, "35b.sdf")
print("✅ 35b.sdf written")
