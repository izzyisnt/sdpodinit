git clone git@github.com:izzyisnt/sdpodinit.git
git clone https://github.com/CAODH/SurfDock.git


./install
./validate

bash patch_openff.bash

https://ccsb.scripps.edu/msms
https://ccsb.scripps.edu/msms/downloads/#:~:text=Linux%2064%20bit%20tar%20file

apt update && apt install -y findutils
find /usr/local/lib/python3.10/dist-packages -name "libstdc++.so.6" -exec mv {} {}.disabled \;
python -c "import pymesh; print(pymesh)"  # should not segfault



cp global_variables.py ~/SurfDock/comp_surface/prepare_target/default_config/global_vars.py
python test_global_vars.py
