git status
rm .bash_history 
ls
bin/redock 4KKH 1RQ
grep alias README.md 
alias goeval='cd /root/SurfDock/comp_surface/prepare_target && bash /root/SurfDock/bash_scripts/test_scripts/eval_samples.sh'
goeval
cd
bin/sweepresult 4kkh
bin/redock 6EMH C15
goeval
cd
bin/sweepresult 6emh
bin/redock 6EKD B9K
goeval
cd
bin/sweepresult 6ekd
ls /root/SurfDock/data/eval_sample_dirs/test_samples
rm -rf /root/SurfDock/data/eval_sample_dirs/test_samples/*
bin/redock 7KSK X3V
goeval
cd
bin/sweepresult 7KSK
bin/sweepresult 7ksk
ls /root/SurfDock/data/eval_sample_dirs/test_samples/7KSK
ls /root/SurfDock/data/eval_sample_dirs/test_samples/7ksk
ls
cp 589_ideal.sdf /root/SurfDock/data/eval_sample_dirs/test_samples/7ksk/7ksk_ligand.sdf 
goeval
cd
bin/sweepresult 7ksk
ls results/7ksk
ls -l results/7ksk/
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/*7ksk*
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102
ls
goeval
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/7ksk_protein_processed_8A_7ksk_ligand/
cd
ls
git status
git add .
git commit -m "cross docked results"
git push
