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
ls
bin/redock 7YL1 J6F
grep alias README.md 
alias goeval='cd /root/SurfDock/comp_surface/prepare_target && bash /root/SurfDock/bash_scripts/test_scripts/eval_samples.sh'
vi ~/.zshrc
vi ~/.bashrc
source ~/.bashrc
goeval
cd
bin/sweepresult 7yl1
ls /root/SurfDock/data/eval_sample_dirs/test_samples/7yl1
ls
cp 589_ideal.sdf /root/SurfDock/data/eval_sample_dirs/test_samples/7yl1/7yl1_ligand.sdf
goeval
cd
bin/sweepresult 7yl1
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result
ls /root/SurfDock/data/eval_sample_dirs/test_samples
rm -rf /root/SurfDock/data/eval_sample_dirs/test_samples/7ksk
goeval
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result
ls /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/7yl1_protein_processed_8A_7yl1_ligand/
cd
git status
git add .
git commit -m "7yl1 cross docked bogus"
git push
git fetch origin
git log HEAD..origin/main --oneline
ls
ls results/
rm -rf results/6emh/
git pull
git pull --rebase origin main
git add .
git commit -m "cross dock to 7yl1"
git pull --rebase origin main
git push origin main
ls;
goeval
ls
cd
ls
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1/
ls
git status
pwd
ls
ls -alt
ls
git pull
ls
cp ligand_in_target.sdf SurfDock/data/eval_sample_dirs/test_samples/7yl1/7yl1_ligand.sdf
goeval
cd
bin/sweepresult 7yl1
git add .
git commit -m "7yl1 results"
git push
ls
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1/
pwd
cp -rp SurfDock/data/eval_sample_dirs/test_samples/7yl1 7yl1input
git add .
git commit -m "check mol2 vs sdf"
git push
