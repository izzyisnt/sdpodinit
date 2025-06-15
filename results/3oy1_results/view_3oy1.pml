# Load protein
load ./surface_mesh/3oy1/3oy1_protein_processed_8A.pdb, protein

# Load ligand
load ./data/eval_sample_dirs/test_samples/3oy1/3oy1_ligand.sdf, ligand

# Load mesh
load ./surface_mesh/3oy1/3oy1_protein_processed_8A.ply, mesh

# Style the protein and ligand
hide everything
show cartoon, protein
show sticks, ligand
color yellow, ligand

# Style the mesh
set mesh_width, 0.5, mesh
set transparency, 0.5, mesh
color grey80, mesh

# Lighting settings for proper mesh shading
set two_sided_lighting, on
set spec_reflect, 0.1
set spec_power, 100
set use_shaders, on
set ray_shadows, off

# Orientation and zoom
orient
zoom

# Optional high-res ray trace
# ray 1200, 900
