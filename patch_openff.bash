########################
# 0.  Dependency stack #
########################
pip install pint==0.19 \
           rdkit-pypi==2022.9.5 \
           openmm==8.2.0 \
           trimesh \
           torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 \
           git+https://github.com/openforcefield/openff-units.git@0.1.0 \
           git+https://github.com/openforcefield/openff-toolkit.git@0.10.0

############################################
# 1.  Patch SurfDock’s bad OpenFF import   #
############################################
sed -i \
  's/from openff\.toolkit import Molecule/from openff.toolkit.topology.molecule import Molecule/' \
  SurfDock/force_optimize/minimize_utils.py

###############################################################
# 2.  Inject the missing openff.units.elements shim in-place  #
###############################################################
python - <<'PY'
import textwrap, pathlib, openff, importlib

site_dir  = pathlib.Path(next(iter(openff.__path__)))
units_dir = site_dir / "units"
units_dir.mkdir(exist_ok=True)

(units_dir / "__init__.py").touch(exist_ok=True)          # ensure sub-package

(units_dir / "elements.py").write_text(textwrap.dedent("""
    MASSES = {
        1: 1.008,  6: 12.011, 7: 14.007, 8: 15.999, 9: 18.998,
       15: 30.974, 16: 32.060, 17: 35.45, 35: 79.904, 53: 126.904
    }
    SYMBOLS = {
        1:'H', 6:'C', 7:'N', 8:'O', 9:'F',
       15:'P', 16:'S', 17:'Cl', 35:'Br', 53:'I'
    }
    __all__ = ["MASSES", "SYMBOLS"]
"""))

importlib.invalidate_caches()
from openff.units.elements import MASSES, SYMBOLS
print("✅  shim live – C =", MASSES[6], SYMBOLS[6])
PY
