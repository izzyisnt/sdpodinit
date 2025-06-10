#!/usr/bin/env bash
set -e

PDB_ID="$1"
LIG_RES="$2"   # three‐letter residue name in the PDB

if [[ -z "$PDB_ID" || -z "$LIG_RES" ]]; then
  echo "❌ Usage: $0 <PDB_ID> <LIG_RESNAME>"
  exit 1
fi

WORK="apbs_run"
rm -rf "$WORK" && mkdir "$WORK"
cd "$WORK"

echo "⬇️ Downloading PDB ${PDB_ID}.pdb…"
wget -q "https://files.rcsb.org/download/${PDB_ID}.pdb" -O "${PDB_ID}.pdb"

echo "🧠 Extracting ligand coords for residue ${LIG_RES}…"
python3 ../extract_ligand_from_pdb.py "${PDB_ID}.pdb" "${LIG_RES}"

echo "⚗️ Converting ${PDB_ID}.pdb → ${PDB_ID}.pqr…"
pdb2pqr --ff=parse "${PDB_ID}.pdb" "${PDB_ID}.pqr"

cat > apbs_input.in <<EOF
read
  mol pqr ${PDB_ID}.pqr
end

elec
  mg-auto
  dime 65 65 65
  cglen 80.0 80.0 80.0
  fglen 40.0 40.0 40.0
  cgcent mol 1
  fgcent mol 1
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
  write pot dx ${PDB_ID}
end

quit
EOF

echo "⚡ Running APBS…"
apbs apbs_input.in

DX=$(ls *.dx | head -n1)
if [[ -z "$DX" ]]; then
  echo "❌ No .dx file produced; please check apbs_input.in" >&2
  exit 1
fi

echo "📊 Sampling electrostatics at ligand atoms…"
multivalue ligand_coords.csv "$DX" ligand_potential.csv

echo "✅ Done. Files in $(pwd):"
ls -1 "${PDB_ID}.pqr" "$DX" ligand_coords.csv ligand_potential.csv

