# Set background to white for better contrast
bg_color white

# Color the protein surface as neutral grey
color grey70, 7yl1_8_ENGINEERED
set transparency, 0.3, 7yl1_8_ENGINEERED

# Color the "best" (reference) ligand bright red
color red, best
show sticks, best
set stick_radius, 0.25, best

# Color the generated ligand (pose) bright green
color green, 7yl1_ligand
show sticks, 7yl1_ligand
set stick_radius, 0.25, 7yl1_ligand

# Draw the protein backbone as cyan lines
#hide everything, 7yl1_protein_processed
#show lines, 7yl1_protein_processed
#color cyan, 7yl1_protein_processed

# Optional: hide polar contacts if too cluttered
#hide everything, polar_contacts
