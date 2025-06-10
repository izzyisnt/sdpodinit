from pathlib import Path
import os

# Helper
def abspath(path): return str(Path(path).expanduser())

# Hard paths
msms_bin        = abspath("~/SurfDock/comp_surface/tools/APBS/bin/msms")
apbs_bin        = abspath("~/SurfDock/comp_surface/tools/APBS/bin/apbs")
pdb2pqr_bin     = abspath("~/SurfDock/comp_surface/tools/PDB2PQR/pdb2pqr")
multivalue_bin  = abspath("~/SurfDock/comp_surface/tools/APBS/bin/multivalue")

# Export to environment (optional, but SurfDock subprocesses may use them)
os.environ["MSMS_BIN"]        = msms_bin
os.environ["APBS_BIN"]        = apbs_bin
os.environ["PDB2PQR_BIN"]     = pdb2pqr_bin
os.environ["MULTIVALUE_BIN"]  = multivalue_bin

epsilon = 1.0e-6

class NoSolutionError(Exception):
    pass

