# Evaluating the Robustness of Deepfake Facial Image Detectors
<b>Authors: Dongli He, Askhat Sametov, Vladislav Ryspayev</b>

## Requirements
Conda environment is recommended

Python >= 3.11

## 1. Set up necessary stuff
```
pip install -r requirements.txt
bash setup.sh
```

## Dataset
<!-- Please refer to <a href=https://github.com/SCLBD/DeepfakeBench/tree/main?tab=readme-ov-file#2-download-data>DeepfakeBench</a> for datasets used in the project. -->

Use the following link to download RGB <a href=https://pan.baidu.com/s/1NAMUHcZvsIm7l6hMHeEQjQ?pwd=ogjn>RGB-format datasets</a>, <a href=https://pan.baidu.com/share/init?surl=riMCN5iXTJ2g9fQjtlZswg&pwd=g3gj>Lmdb-format Datasets</a>, and <a href=https://pan.baidu.com/share/init?surl=d7PTV2GK-fpGibcbtnQDqQ&pwd=dcwv>JSON configurations</a>. Put the RGB-format datasets and Lmdb-format datasets under [./deepfake/datasets](./deepfake/datasets) and JSON configurations under [./deepfake/preprocessing/dataset_json](./deepfake/preprocessing/dataset_json).

Note: It will take hours to download the dataset as they are stored on a Chinese platform. The downloading speeed is slow from UAE.

## Quick Start
TODO