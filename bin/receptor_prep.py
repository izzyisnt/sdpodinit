#!/usr/bin/env python3
"""
fix_receptor.py <input.pdb> <output_fixed.pdb>

Meant to be run on the *_protein_processed.pdb* produced by redock.
"""

import subprocess, sys, shutil
from pathlib import Path
import gemmi                          # fast crystallography lib

inp, outp = map(Path, sys.argv[1:3])

# --- 1. read & apply biomt / scale if present -----------------------------
doc = gemmi.read_structure(str(inp))
if doc.assembly:
    doc = doc.assembly[0].make_asu(doc)            # apply first BIOMT
else:
    # if already PDB from RCSB, gemmi leaves coords untouched
    pass

model = doc[0]

# --- 2. keep chain A only ---------------------------------------------------
model.remove_chain_if(lambda ch: ch.name != 'A')

# --- 3. purge waters & alt-lP1+r6B62=7F\P0+r\P1+r6B44=1B5B337E\P1+r6B68=1B4F48\P1+r4037=1B4F46\P1+r6B50=1B5B357E\P1+r6B4E=1B5B367E\ocs --------------------------------------------
for ch in model:
    for res in list(ch):
        if res.name in ("HOH", "WAT", "H2O"):
            ch.remove_residue(res)
            continue
        # collapse alt-locs:
        main_alt = {a.altloc for a in res if a.altloc}.pop() if any(a.altloc for a in res) else ''
        for atom in list(res):
            if atom.altloc and atom.altloc != main_alt:
                # only keep alt if it's *exactly* overlapping (distance<0.6 Å)
                main = res[atom.name][0]
                if atom.distance(main) > 0.6:
                    res.remove_atom(atom)

# --- 4. write intermediate PDB ---------------------------------------------
tmp = inp.with_suffix(".tmp.pdb")
doc.write_pdb(str(tmp))

# --- 5. add hydrogens via Reduce -------------------------------------------
if not shutil.which("reduce"):
    sys.exit("❌  Need the 'reduce' binary (MolProbity); install it first.")

subprocess.run(["reduce", "-BUILD", "-NUClear", "-quiet", str(tmp)],
               check=True, stdout=open(outp, "w"))
tmp.unlink()
print(f"🧬  Fixed receptor → {outp}")

