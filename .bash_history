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
ls
obabel ligand_in_target.sdf -O ligand.mol2
cp ligand.mol2 SurfDock/data/eval_sample_dirs/test_samples/7yl1/7yl1_ligand.mol2 
goeval
cd
bin/sweepresult 7yl1
goeval
cd /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/*7yl1*
ls
cd
ls
git status
git add .
git commit -m "1.96 crossdock with .mol2 required"
git push
git pull;
ls
ls results/
goeval
cd /root/SurfDock/docking_result/SurfDock_eval_samples/repeat_250102/SurfDock_docking_result/*7yl1*
ls
cd
s
ls
ls biun
ls bin
bin/sweepresult 
bin/sweepresult 7yl1
git add .
git commit -m "pull clean same "
git push
ls
git status
git pull
ls
pwd
s
ls
cat > foo.py
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1/7yl1_*
python foo.py 35b.sdf 7yl1
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1
ls
vi foo.py 
python foo.py 35b.sdf 7yl1
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1
ls -l SurfDock/data/eval_sample_dirs/test_samples/7yl1
rm SurfDock/data/eval_sample_dirs/test_samples/7yl1/7yl1.*
goeval
cd
bin/sweepresult 7yl1
ls -alt /root/results/7yl1/
git status
mv foo.py bin/loadlig.py
git add .
git commit -m "35b results"
git push
ls -alt
git pull
ls bin
python loadlig..py 35b_in_7yl1.sdf 7yl1
python bin/loadlig.py  35b_in_7yl1.sdf 7yl1
ls SurfDock/data/eval_sample_dirs/test_samples/7yl1
goeval
cd
bin/sweepresult 7yl1
git add .
git commit -m "jun result"
git push
git pull
ls
head foo.py
python foo.py --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"     --protein 7yl1.pdb     --prefix 7yl1
ls
python foo.py --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"     --protein 7yl1.pdb     --prefix 7yl1
ls
cat > foo.py
python foo.py --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"     --protein 7yl1.pdb     --prefix 7yl1
python foo.py --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"   --protein 7yl1.pdb     --prefix 7yl1
python foo.py     --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"     --protein 7yl1.pdb     --prefix 7yl1     --template-resn J6F
cat > foo.py
python foo.py   --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"   --protein 7yl1.pdb   --prefix 7yl1   --template-resn J6F
cat > foo.py
python foo.py   --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"   --protein 7yl1.pdb   --prefix 7yl1   --template-resn J6F
python foo.py   --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"   --protein 7yl1.pdb   --prefix 7yl1   --template-resn J6F
cat > foo.py
python foo.py   --iupac "Cyclopropyl[(3R)-3-{4-[6-hydroxy-2-(naphthalen-2-yl)-1H-benzimidazol-1-yl]pyrimidin-2-yl}amino]piperidin-1-yl]methanone"   --protein 7yl1.pdb   --prefix 7yl1   --template-resn J6F
obabel
ls
cat > 35b.smi
vi 35b.smi 
obabel 35b.smiles -osdf -O 35b.sdf --gen3d  
mv 35b.smi 35b.smiles
obabel 35b.smiles -osdf -O 35b.sdf --gen3d  
ls
sl bin
ls bin
bin/loadmols 35b.sdf 7yl1
python bin/loadmols 35b.sdf 7yl1
vi bin/loadmols
head bin/loadmols
python bin/loadliginpocket.py 35b.sdf
python bin/loadlig.py 35b_in_7yl1.sdf 7yl1
ls -alt
goeval
cd
ls
bin/sweepresult 7yl1
git add .
git commit -m "35b_2 run"
git push
python jerryphase
git pull
python jerryphase
ls
git pull
python jerryphase
vi jerryphase 
python jerryphase
vi jerryphase 
python jerryphase
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
vi jerryphase 
python jerryphase 
git add .
git commit -m "..."
git push
