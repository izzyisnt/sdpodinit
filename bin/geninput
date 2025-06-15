#!/usr/bin/env python3
import os
import argparse
import requests
from rdkit import Chem
from rdkit.Chem import rdmolfiles

def download_pdb(pdb_id, out_path):
    url = f"https://files.rcsb.org/download/{pdb_id}.pdb"
    response = requests.get(url)
    if not response.ok:
        raise ValueError(f"Failed to fetch PDB {pdb_id}")
    with open(out_path, 'w') as f:
        f.write(response.text)
    print(f"✅ Downloaded {pdb_id}.pdb")

def extract_ligand_and_protein(pdb_file, resname, ligand_out, protein_out):
    ligand_lines = []
    protein_lines = []

    with open(pdb_file, 'r') as f:
        for line in f:
            if line.startswith("HETATM") and resname in line[17:20]:
                ligand_lines.append(line)
            elif line.startswith(("ATOM", "HETATM")) and resname not in line[17:20]:
                protein_lines.append(line)
            elif line.startswith("END"):
                protein_lines.append(line)

    if not ligand_lines:
        raise ValueError(f"No ligand {resname} found in {pdb_file}")

    # write ligand pdb
    ligand_pdb = "ligand.pdb"
    with open(ligand_pdb, 'w') as f:
        f.writelines(ligand_lines)

    # convert to SDF
    mol = Chem.MolFromPDBFile(ligand_pdb, removeHs=False)
    if mol is None:
        raise ValueError("RDKit failed to parse ligand.pdb")
    w = rdmolfiles.SDWriter(ligand_out)
    w.write(mol)
    w.close()
    os.remove(ligand_pdb)

    # write protein-only PDB
    with open(protein_out, 'w') as f:
        f.writelines(protein_lines)

    print(f"🧪 Extracted ligand to {ligand_out}")
    print(f"🧬 Wrote receptor to {protein_out}")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("pdb_id", help="4-letter PDB ID")
    parser.add_argument("resname", help="3-letter ligand residue name (e.g. LIG)")
    args = parser.parse_args()

    pdb_id = args.pdb_id.lower()
    resname = args.resname.upper()
    pdb_file = f"{pdb_id}.pdb"

    download_pdb(pdb_id, pdb_file)
    extract_ligand_and_protein(pdb_file, resname, "ligand.sdf", "protein.pdb")

if __name__ == "__main__":
    main()
