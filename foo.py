from rdkit import Chem

# Try best import available
try:
    from rdkit.Chem.MolStandardize.rdMolStandardize import AssignBondOrdersFromTemplate
except ImportError:
    raise ImportError("Your RDKit build is missing AssignBondOrdersFromTemplate. Try upgrading or using a Conda RDKit build.")

# Load molecules
template = Chem.MolFromMolFile("589_ideal.sdf")
mol = Chem.MolFromPDBFile("ligand_from_pdb.pdb")

if template is None or mol is None:
    raise ValueError("Failed to load either template or mol. Check file paths and formats.")

# Add Hs before template matching
template = Chem.AddHs(template)
mol = Chem.AddHs(mol)

# Assign bond orders
mol_bo = AssignBondOrdersFromTemplate(template, mol)
Chem.SDWriter("fixed.sdf").write(mol_bo)
print("✅ Bond orders assigned and SDF saved to fixed.sdf")
