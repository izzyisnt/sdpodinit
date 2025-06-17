from rdkit import Chem
from rdkit.Chem import AllChem
import sys
import os

def fix_conformer_mmff(input_str, output_prefix="ligand_fixed"):
    # Load SMILES from file or directly
    if os.path.isfile(input_str):
        with open(input_str) as f:
            line = f.readline().strip()
            print(f"📄 Loaded line from file: {line}")
            if ' ' in line:
                smiles, name = line.split()
            else:
                smiles = line
                name = output_prefix
    else:
        smiles = input_str
        name = output_prefix

    print(f"🔍 Parsing SMILES: {smiles}")
    mol = Chem.MolFromSmiles(smiles)
    if mol is None:
        print("❌ Failed to parse SMILES. Please check formatting.")
        return

    mol = Chem.AddHs(mol)

    print("🧬 Embedding 3D coordinates with ETKDGv3...")
    params = AllChem.ETKDGv3()
    params.useSmallRingTorsions = True
    params.useMacrocycleTorsions = True
    embed_status = AllChem.EmbedMolecule(mol, params)
    if embed_status != 0:
        print("❌ Conformer generation failed.")
        return

    print("⚙️ Attempting MMFF94 optimization...")
    if AllChem.MMFFHasAllMoleculeParams(mol):
        AllChem.MMFFOptimizeMolecule(mol)
        ff = AllChem.MMFFGetMoleculeForceField(mol, AllChem.MMFFGetMoleculeProperties(mol))
        print(f"✅ MMFF94 optimization complete. Final energy: {ff.CalcEnergy():.2f} kcal/mol")
    else:
        print("⚠️ MMFF94 parameters unavailable. Falling back to UFF.")
        AllChem.UFFOptimizeMolecule(mol)

    print(f"💾 Writing to {output_prefix}.sdf")
    writer = Chem.SDWriter(f"{output_prefix}.sdf")
    writer.write(mol)
    writer.close()
    print("✅ Done.")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python foo.py ligand.smi_or_smiles")
        sys.exit(1)
    fix_conformer_mmff(sys.argv[1])
