#!/usr/bin/env python3
import sys

if len(sys.argv) != 2:
    sys.exit("Usage: generate_apbs_input.py <basename (no .pqr)>")

base = sys.argv[1]

with open("apbs_input.in", "w") as f:
    f.write(f"""read
  mol pqr {base}.pqr
end

elec
  mg-auto
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
""")
print("✅ apbs_input.in written.")

