from SurfDock.comp_surface.prepare_target.computeTargetMesh import compute_inp_surface

compute_inp_surface(
    target_filename='3OY1.pdb',
    ligand_filename='3OY1_ligand.mol2',   # or .sdf
    out_dir='.',                          # output here
    dist_threshold=10                     # Å pocket cutoff
)

