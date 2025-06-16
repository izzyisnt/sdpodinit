git clone git@github.com:izzyisnt/sdpodinit.git
git clone https://github.com/CAODH/SurfDock.git


./install
./validate

bash patch_openff.bash
tarball msms binary to /usr/local/bin

cp global_variables.py ~/SurfDock/comp_surface/prepare_target/default_config/global_vars.py
python test_global_vars.py

alias goeval='cd /root/SurfDock/comp_surface/prepare_target && bash /root/SurfDock/bash_scripts/test_scripts/eval_samples.sh'

ln -s /usr/local/lib/python3.10/dist-packages/esm /root/SurfDock


pip install pdb2pqr

apbs and friends work on mac



apt update && apt install -y findutils
find /usr/local/lib/python3.10/dist-packages -name "libstdc++.so.6" -exec mv {} {}.disabled \;
python -c "import pymesh; print(pymesh)"  # should not segfault



second run
if os.path.exists(output_file) and not args.overwrite:
    print("have done ,just skip!")
then div by zero



