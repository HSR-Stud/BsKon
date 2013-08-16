#!/bin/bash

# Setup
SLIDES="Android_L1.pdf Android_L2.pdf Android_L3a.pdf Android_L3b.pdf Android_L4a.pdf Android_L4b.pdf Android_L5a.pdf Android_L5b.pdf Android_L_Fragments.pdf Android_L_OS_Security.pdf"
INDEX="Index.pdf"
OUTFILE="Android_All.pdf"
OUTFILE_WITH_INDEX="Android_All_Index.pdf"

# Create scaled 2x3 versions of slides
echo "Creating scaled 2x3 versions of slides..."
pdfjam --quiet --nup 2x3 \
    --frame true --noautoscale false \
    --delta '0.1cm 1.5cm' --scale 0.95 \
    --paper a4paper --twoside \
    --batch $SLIDES || exit 1

# Combine all slides into a single file. Add page numbering.
echo "Combining all slides into a single file..."
PDFJAM_SLIDES=$(echo $SLIDES | sed 's/\.pdf/-pdfjam\.pdf/g')
pdfjam --quiet \
    --pagecommand '{\thispagestyle{plain}}' \
    --preamble '\footskip 3cm \usepackage[default]{cantarell}' \
    $PDFJAM_SLIDES --outfile $OUTFILE || exit 1

# Add the index
echo "Prepending the index..."
pdfjam --quiet $INDEX $OUTFILE --outfile $OUTFILE_WITH_INDEX || exit 1

echo "Done. Output is in $OUTFILE_WITH_INDEX."
