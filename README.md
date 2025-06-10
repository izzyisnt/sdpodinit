prody apt-get update && apt-get install -y python3.10-dev

pip install \
  torchmetrics==1.2.1 \
  torch-ema==0.3 \
  e3nn==0.5.1 \
  pyg_lib \
  torch_scatter \
  torch_sparse \
  torch_cluster \
  torch_spline_conv \
  --find-links https://data.pyg.org/whl/torch-2.5.1+cu121.html

pip install \
  torchmetrics==1.2.1 \
  torch-ema==0.3 \
  e3nn==0.5.1 \
  pyg_lib \
  torch_scatter \
  torch_sparse \
  torch_cluster \
  torch_spline_conv \
  --find-links https://data.pyg.org/whl/torch-2.5.1+cu121.html

pip install \
  rdkit-pypi==2022.9.5 \
  openmm==8.1.1 \
  biopython==1.79 \
  prody==2.4.0 \
  babel==2.13.1 \
  biopandas==0.4.1 \
  openbabel==3.1.1.1


pip install git+https://github.com/openmm/pdbfixer.git@v1.9

pip install \
  trimesh \
  pymeshfix \
  plyfile \
  matplotlib \
  pyvista


pip install \
  loguru \
  prefetch_generator \
  dimorphite_dl \
  huggingface-hub==0.17.3 \
  tokenizers==0.13.3 \
  transformers==4.29.2

#Note: dimorphite_dl is often confused with the CLI tool. Use pip install dimorphite_dl from MolSSI fork if needed manually.
