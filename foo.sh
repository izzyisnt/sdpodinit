#!/bin/bash
set -e  # Exit on error

# Set install prefix
PREFIX="/usr/local"

echo "📁 Installing APBS 3.4.1 to $PREFIX"
apt update && apt install -y cmake g++ git libblas-dev liblapack-dev libtool \
    libeigen3-dev libxml2-dev libreadline-dev python3 python3-pip wget

# Clean any prior APBS
rm -rf /tmp/apbs && mkdir -p /tmp/apbs
cd /tmp/apbs
git clone --branch v3.4.1 https://github.com/Electrostatics/apbs.git
cd apbs
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DENABLE_GEOFLOW=ON
make -j$(nproc)
make install
ln -sf "$PREFIX/bin/apbs" /usr/local/bin/apbs

echo "✅ APBS installed: $(apbs --version || echo unknown version)"

# ---------------------------
echo "📁 Installing pdb2pqr (Python 3 version)"
cd /tmp
git clone https://github.com/Electrostatics/pdb2pqr.git
cd pdb2pqr
python3 -m pip install -r requirements.txt
python3 setup.py install
ln -sf $(which pdb2pqr) /usr/local/bin/pdb2pqr

echo "✅ PDB2PQR installed: $(pdb2pqr --help | head -n 1)"

# ---------------------------
echo "📁 Installing multivalue"
cd /tmp
git clone https://github.com/Electrostatics/multivalue.git
cd multivalue
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX
make -j$(nproc)
make install
ln -sf "$PREFIX/bin/multivalue" /usr/local/bin/multivalue

echo "✅ multivalue installed: $(multivalue || true)"

echo "🎉 All tools installed successfully"

