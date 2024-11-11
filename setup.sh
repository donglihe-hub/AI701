#!/bin/bash

# download dependencies
pip install -r requirements.txt

# download pre-processing data
preprocessed_path="deepfake/preprocessing/dlib_tools"
landmard="shape_predictor_81_face_landmarks.dat"
if [ ! -f "$preprocessed_path/$landmard" ]; then
    wget -P $preprocessed_path "https://github.com/SCLBD/DeepfakeBench/releases/download/v1.0.0/$landmard"
fi

# download backbones
training_path="deepfake/training"
pretraining_path="deepfake/training/pretrained"
pretraining="pretrained.zip"
if [ ! -f "$pretraining_path/$pretraining" ]; then
    wget -P $training_path "https://github.com/SCLBD/DeepfakeBench/releases/download/v1.0.0/$pretraining"
    unzip "$training_path/$pretraining" -d $training_path
    mv "$training_path/$pretraining" "$pretraining_path/$pretraining"
fi

# download pre-trained weights released by DeepfakeBench
weights=(
    "capsule_best.pth"
    "cnnaug_best.pth"
    "core_best.pth"
    "effnb4_best.pth"
    "f3net_best.pth"
    "ffd_best.pth"
    "meso4Incep_best.pth"
    "meso4_best.pth"
    "recce_best.pth"
    "spsl_best.pth"
    "srm_best.pth"
    "ucf_best.pth"
    "xception_best.pth"
)

for w in "${weights[@]}"; do
    weight_path="deepfake/training/weights"
    if [ ! -f "$weight_path/$w" ]; then
        wget -P $weight_path "https://github.com/SCLBD/DeepfakeBench/releases/download/v1.0.1/$w"
    fi
done
