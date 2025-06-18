#!/usr/bin/env python
"""
make_surfdock_input.py

Usage:
    python make_surfdock_input.py arg1.sdf arg2_prefix

This script:
  1. Converts arg1.sdf to mol2 using Open Babel
  2. Copies both the original SDF and the mol2 file into the
     SurfDock test sample input directory, renaming them with arg2_prefix.

Example:
    python make_surfdock_input.py myligand.sdf 35b_test
    → ./SurfDock/data/eval_sample_dirs/test_samples/35b_test/35b_test.sdf
      ./SurfDock/data/eval_sample_dirs/test_samples/35b_test/35b_test.mol2
"""
import argparse
import pathlib
import shutil
import subprocess

def convert_to_mol2(sdf_path: pathlib.Path) -> pathlib.Path:
    mol2_path = sdf_path.with_suffix(".mol2")
    cmd = ["obabel", str(sdf_path), "-O", str(mol2_path)]
    subprocess.run(cmd, check=True)
    return mol2_path

def copy_to_surfdock(src_sdf: pathlib.Path, src_mol2: pathlib.Path, prefix: str):
    target_dir = pathlib.Path("./SurfDock/data/eval_sample_dirs/test_samples") / prefix
    target_dir.mkdir(parents=True, exist_ok=True)

    shutil.copy2(src_sdf, target_dir / f"{prefix}_ligand.sdf")
    shutil.copy2(src_mol2, target_dir / f"{prefix}_ligand.mol2")
    print(f"Copied to {target_dir}/")

def main():
    parser = argparse.ArgumentParser("Convert and prepare ligand for SurfDock input")
    parser.add_argument("input_sdf", type=pathlib.Path, help="Input ligand SDF")
    parser.add_argument("prefix", type=str, help="Prefix name for SurfDock input")
    args = parser.parse_args()

    mol2 = convert_to_mol2(args.input_sdf)
    copy_to_surfdock(args.input_sdf, mol2, args.prefix)

if __name__ == "__main__":
    main()
