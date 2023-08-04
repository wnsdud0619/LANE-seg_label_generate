#!/bin/bash

# modify CULane to yours
CULane=/media/dgist/T7/DGIST_data_6

./seg_label_generate \
    -l ${CULane}/list/train.txt \
    -m trainList \
    -d $CULane

# The generated list file would be saved as "${CULane}/list/train_gt.txt"
