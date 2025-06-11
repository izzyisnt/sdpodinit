#!/usr/bin/env python3
import sys, os
import math

if len(sys.argv) != 2:
    sys.exit("Usage: generate_apbs_input_manual.py <basename (no .pqr)>")

base = sys.argv[1]
pqr_file = f"{base}.pqr"
if not os.path.isfile(pqr_file):
    sys.exit(f"❌ Cannot find {pqr_file}")

# Parse PQR to get all atom coordinates
coords = []
with open(pqr_file) as f:
    for line in f:
        if line.startswith(("ATOM", "HETATM")):
            # PQR format: columns roughly similar to PDB: x in cols 30-38, y 38-46, z 46-54
            try:
                x = float(line[30:38])
                y = float(line[38:46])
                z = float(line[46:54])
                coords.append((x,y,z))
            except:
                continue

if not coords:
    sys.exit(f"❌ No atom coords found in {pqr_file}")

# Compute bounding box
xs = [c[0] for c in coords]
ys = [c[1] for c in coords]
zs = [c[2] for c in coords]
minx, maxx = min(xs), max(xs)
miny, maxy = min(ys), max(ys)
minz, maxz = min(zs), max(zs)

# Center of molecule
cx = (minx + maxx)/2.0
cy = (miny + maxy)/2.0
cz = (minz + maxz)/2.0

# Fine grid length: span of molecule plus margin (e.g. 20 Å padding)
# You can adjust padding as needed
pad = 20.0
fx = (maxx - minx) + pad
fy = (maxy - miny) + pad
fz = (maxz - minz) + pad

# Coarse grid length: larger box around fine grid, e.g. 2× fine length
# Or adjust per requirements; here we use roughly 2×
cxlen = fx*2.0
cylen = fy*2.0
czlen = fz*2.0

# Choose grid dimensions DIME: typical 65³ grid
# Could also compute number of points: e.g. nearest odd integer: but 65 is common
nx = ny = nz = 65

# Write APBS input with mg-manual
inp = f"""read
  mol pqr {base}.pqr
end

elec
  mg-manual
  dime {nx} {ny} {nz}
  cglen {cxlen:.3f} {cylen:.3f} {czlen:.3f}
  fglen {fx:.3f} {fy:.3f} {fz:.3f}
  cgcent {cx:.3f} {cy:.3f} {cz:.3f}
  fgcent {cx:.3f} {cy:.3f} {cz:.3f}
  mol 1
  lpbe
  bcfl sdh
  pdie 2.0
  sdie 78.5
  srad 1.4
  swin 0.3
  srfm smol
  chgm spl2
  sdens 0.030
  temp 298.15
  calcenergy total
  calcforce no
  write pot dx {base}
end

quit
"""
with open("apbs_input.in", "w") as f:
    f.write(inp)

print("✅ apbs_input.in written with mg-manual.")
print(f" Center: ({cx:.3f}, {cy:.3f}, {cz:.3f})")
print(f" Fine grid lengths: {fx:.3f}, {fy:.3f}, {fz:.3f}")
print(f" Coarse grid lengths: {cxlen:.3f}, {cylen:.3f}, {czlen:.3f}")
print(f" DIME: {nx} {ny} {nz}")

