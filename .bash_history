vi re
cd root
vi requirements.txt 
pip install scikit-learn==1.3.2
torchmetrics==1.2.1
torch-ema==0.3
accelerate==0.15.0
wandb==0.16.1
apt-get install -y build-essential
cd root
cat requirements.txt 
pip install trimesh
pymeshfix
plyfile
pip install pymeshfix plyfile 
cat requirements.txt 
pip install loguru
dimorphite_dl
prefetch_generator
tokenizers==0.13.3
transformers==4.29.2
pip install dimorphite_d prefetch_generator
pip install dimorphite_dl prefetch_generator
ls
cd root
vi README.md
cat requirements.txt 
pip install e3nn==0.5.1
pyg_lib
torch_scatter
torch_sparse
torch_cluster
torch_spline_conv
sl
ls
cd root
ls
vi requirements.txt 
cat requirements.txt 
pip install git+https://github.com/facebookresearch/esm.git
ls
cd /root
ls
cat > requirements.txt
pip install -r requirements.txt
python
ln -s /usr/bin/python3 /usr/local/bin/python
python
cat requirements.txt 
vi requirements.txt 
pip -r requirements.txt 
pip install -r requirements.txt 
ls
cat requirements.txt 
vi README.md 
cat README.md 
ls
ls -alt
date
less log_chem.txt
ssh localhost
ls -ald ~/.ssh
ls -l ~/.ssh
ls -ld ~/.ssh               # drwx------ (700)
ls -l ~/.ssh/authorized_keys  # -rw------- (600)
ls
cd /root
cp validate  validate.bak
vi validate
./validate
pip install colorama
./validate
vi foo.py
bash foo.py
ls ~/.ssh
vi foo.py
chmod 755 foo.py 
mv foo.py foo
./foo
ssh localhost
ls
cat install
ls
rm validate.bak
git init
git config --global user.name "izzyisnt"
git config --global --list
"
git config --global init.defaultBranch main
git branch -m main  # Rename current branch
ssh -T git@github.com
cat ~/.ssh/authorized_keys 
vi ~/.ssh/id_ed25519
ssh -T git@github.com
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
cp ~/.ssh/authorized_keys ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote add origin git@github.com:izzyisnt/sd_container.git
git add .
git commit -m "Initial commit from RunPod"
GIT_EDITOR=true git commit -m "Initial commit from RunPod"
git config --global user.email "jlugert@me.com"
git commit -m "Initial commit from RunPod"
du -sk .cache
ls .cache
ls .cache/pip
git add .
vi .gitignore
ls;
du -sk .cache
git add .
find .cache | wc -l
git add .
find .cache | wc -l
vi .gitignore 
ls .cache
vi .gitignore 
git add .
git reset
git add .
# Ignore everything in .cache except HuggingFace
.cache/*
vi .gitignore 
strace -f -p $(pgrep -f "git add")
git add .
pwd
df
du -sk .git
git reset
git gc --prune=now
ls .git
ls .git/objects/
rm -rf .git
git init
echo ".cache/" >> .gitignore  # or keep it if you still want it
git add README.md validate install requirements.txt
git commit -m "Clean re-init after .git overflow"
git init
git config --global user.name "Izzy Isn't"
git config --global user.email "izzy@example.com"
git add .
git commit -m "Clean reboot"
git push -u origin main
git status
git remote add origin git@github.com:izzyisnt/sdpodinit.git
git push -u origin main
gh repo create izzyisnt/sdpodinit --public --confirm
git push -u origin main
cat ~/.ssh/id_ed25519.pub 
git push -u origin main
cat ~/.ssh/id_ed25519.pub 
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_sdpod -C "runpod-sdpodinit"
echo "
Host github.com-sdpod
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_sdpod
" >> ~/.ssh/config
echo "
Host github.com-sdpod
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_sdpod
" >> ~/.ssh/config
cat ~/.ssh/id_ed25519_sdpod.pub
git push -u origin main
ssh -T git@github.com-sdpod
cat ~/.ssh/id_rsa_sdpodinit
ls ~/.ssh
cat <<EOF > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_sdpod
  IdentitiesOnly yes
EOF

chmod 600 ~/.ssh/config
git remote set-url origin git@github.com:izzyisnt/sdpodinit.git
git remote -v
git add .
git commit -m "commit from pod"
git push
git push --set-upstream origin main
git rm --cached .ssh/id_ed25519*
git commit -m "remove private SSH keys"
echo ".ssh/id_ed25519*" >> .gitignore
git add .gitignore
git commit -m "ignore private SSH keys"
git push --force --set-upstream origin main
apt update && apt install -y git
pip install git-filter-repo
git filter-repo --path .ssh/id_ed25519 --path .ssh/id_ed25519.pub --path .ssh/id_ed25519_sdpod --path .ssh/id_ed25519_sdpod.pub --invert-paths
git filter-repo --force   --path .ssh/id_ed25519   --path .ssh/id_ed25519.pub   --path .ssh/id_ed25519_sdpod   --path .ssh/id_ed25519_sdpod.pub   --invert-paths
git push --force --set-upstream origin main
git remote add origin git@github.com:izzyisnt/sdpodinit.git
git remote -v
git push --force --set-upstream origin main
git push
ls
export SDPODINIT_SSH_KEY="$(base64 -w 0 ~/.ssh/id_ed25519_sdpod)"
echo "$SDPODINIT_SSH_KEY" | base64 -d > "$KEY_PATH"
ls
mkdir bar
cd bar
git clone git@github.com:izzyisnt/sdpodinit.git
ls
cd sdpodinit/
ls
./install
ls
./validate 
cd ..
ls
xd ..
cd ..
ls
rm -rf bar
file foo
less foo
more foo
ssh localhost
ls
mv foo sshdinit
ls
git add .
git commit -m "mv foo to ssdinit"
git push
ls
vi README
vi README.md 
cat requirements.txt 
ls
cat requirements.txt 
rm requirements.txt 
ls
git add .
git commit -m "rm requirements.txt; simplify README.md"
git push
ls
vi ~/.bashrc
