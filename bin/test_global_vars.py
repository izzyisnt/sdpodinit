import sys, os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), 'SurfDock')))
from comp_surface.prepare_target.default_config import global_vars


import os

def test_global_paths():
    print("Testing binary paths...")

    # Print the resolved absolute paths
    print("MSMS_BIN       =", global_vars.msms_bin)
    print("APBS_BIN       =", global_vars.apbs_bin)
    print("PDB2PQR_BIN    =", global_vars.pdb2pqr_bin)
    print("MULTIVALUE_BIN =", global_vars.multivalue_bin)

    # Check that files actually exist
    assert os.path.isfile(global_vars.msms_bin), "MSMS binary not found!"
    assert os.path.isfile(global_vars.apbs_bin), "APBS binary not found!"
    assert os.path.isfile(global_vars.pdb2pqr_bin), "PDB2PQR binary not found!"
    assert os.path.isfile(global_vars.multivalue_bin), "MULTIVALUE binary not found!"

    # Check that env vars are also exported
    assert os.environ["MSMS_BIN"] == global_vars.msms_bin
    assert os.environ["APBS_BIN"] == global_vars.apbs_bin
    assert os.environ["PDB2PQR_BIN"] == global_vars.pdb2pqr_bin
    assert os.environ["MULTIVALUE_BIN"] == global_vars.multivalue_bin

    print("✅ All paths and environment variables are valid.")

if __name__ == "__main__":
    test_global_paths()

