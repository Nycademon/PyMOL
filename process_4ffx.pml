# PyMol Script for Various Manipulations on ADSL 4FFX (and cheat sheet)

# Load the structure
load /bio/data2/PDB/4ffx.pdb

# Hide the default lines
hide all

# Show the cartoon depiction for everything
show cartoon, all

# Set the background color
bg_color white

# Color the four chains
color grey80, chain a
color grey60, chain b
color grey40, chain c
color grey20, chain d

# Show sticks for residues of interest (Active Site -- NCBI P30566)
show sticks, (resi 86,107,159,241,289,295,297,302)

# Red for residues of interest (Active Site -- NCBI P30566)
color red, (resi 86,107,159,241,289,295,297,302)

# Yellow for residues of interest (Substrate Binding -- NCBI P30566)
color yellow, (resi 20,21,85,87,111,112,303,329,334,338)

# Show sticks for residues of interest (429 and 430, Neanderthal and primate)
show sticks, resi 429-430

# Blue for residues of interest (429 and 430, Neanderthal and primate)
color blue, resi 429-430

# Show sticks for residues of interest (426, R426H severe mutation)
show sticks, resi 426

# Green for residues of interest (426, R426H severe mutation)
color green, resi 426

# Make cartoon depiction translucent
set cartoon_transparency, 0.5

## Label residues
# Active site
label n. CA and (i. 86,107,159,241,289,295,297,302), "%s %s (%s)"%(resn,resi,chain)
set label_color, red, (resi 86,107,159,241,289,295,297,302)

# 429 and 430
label n. CA and (i. 429,430), "%s %s (%s)"%(resn,resi,chain)
set label_color, blue, (resi 429,430)

# 426
label n. CA and i. 426, "%s %s (%s)"%(resn,resi,chain)
set label_color, green, resi 426

set label_outline_color, black
set label_size, 20

# Set label font (10 and 14 are nice too)
set label_font_id, 7

# Offset labels
set label_position, (2,2,0)

# Remove extraneous
hide sticks, chain c
hide sticks, chain a and not (i. 86,107,241)
hide sticks, chain b and not (i. 159,426,429-430)
hide sticks, chain d and not (i. 295,297,302)
hide labels, chain c
hide labels, chain a and not (i. 86,107,241)
hide labels, chain b and not (i. 159,426,429-430)
hide labels, chain d and not (i. 295,297,302)
