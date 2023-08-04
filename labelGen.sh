#!/bin/bash

# modify CULane to yours
CULane=/media/dgist/T7/DGIST_data_6
OutputPath=/home/dgist/seg_label_generate/laneseg_label_w16
if [ ! -d $OutputPath ]; then
  mkdir $OutputPath
fi
./seg_label_generate \
    -l ${CULane}/list/train.txt \
    -m imgLabel \
    -d $CULane \
    -w 16 \
    -o $OutputPath

# explanation:
# -l: image list file to process
# -m: set mode to "imgLabel" or "trainList"
# -d: dataset path
# -w: the width of lane labels generated
# -o: path to save the generated labels
# -s: visualize annotation, remove this option to generate labels
