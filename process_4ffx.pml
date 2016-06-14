# PyMol Script for Various Manipulations on ADSL 4FFX (and cheat sheet)

# Load the structure
load /home/guido/Desktop/4ffx.pdb

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
show sticks, resi 86
show sticks, resi 107
show sticks, resi 159
show sticks, resi 241
show sticks, resi 289
show sticks, resi 295
show sticks, resi 297
show sticks, resi 302

# Red for residues of interest (Active Site -- NCBI P30566)
color red, resi 86
color red, resi 107
color red, resi 159
color red, resi 241
color red, resi 289
color red, resi 295
color red, resi 297
color red, resi 302

# Yellow for residues of interest (Substrate Binding -- NCBI P30566)
color yellow, resi 20
color yellow, resi 21
color yellow, resi 85
color yellow, resi 87
color yellow, resi 111
color yellow, resi 112
color yellow, resi 303
color yellow, resi 329
color yellow, resi 334
color yellow, resi 338

# Show sticks for residues of interest (429 and 430, Neanderthal and primate)
show sticks, resi 429
show sticks, resi 430

# Blue for residues of interest (429 and 430, Neanderthal and primate)
color blue, resi 429
color blue, resi 430

# Make cartoon depiction translucent
set cartoon_transparency, 0.5

## Label residues
# Active site
label n. CA and i. 86, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 86
label n. CA and i. 107, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 107
label n. CA and i. 159, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 159
label n. CA and i. 241, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 241
label n. CA and i. 289, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 289
label n. CA and i. 295, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 295
label n. CA and i. 297, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 297
label n. CA and i. 302, "%s %s (%s)"%(resn,resi,chain)
set label_color, red, resi 302

# 429 and 430
label n. CA and i. 429, "%s %s (%s)"%(resn,resi,chain)
set label_color, blue, resi 429
label n. CA and i. 430, "%s %s (%s)"%(resn,resi,chain)
set label_color, blue, resi 430

set label_outline_color, black
set label_size, 20

# Set label font (10 and 14 are nice too)
set label_font_id, 7

# Offset labels
set label_position, (2,2,0)

# Remove extraneous
hide sticks, chain c
hide sticks, chain a and not i. 86 and not i. 107 and not i. 241
hide sticks, chain b and not i. 159 and not i. 429-430
hide sticks, chain d and not i. 295 and not i. 297 and not i. 302
hide labels, chain c
hide labels, chain a and not i. 86 and not i. 107 and not i. 241
hide labels, chain b and not i. 159 and not i. 429-430
hide labels, chain d and not i. 295 and not i. 297 and not i. 302
