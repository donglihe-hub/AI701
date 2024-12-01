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

Use the following link to download [RGB-format datasets](https://pan.baidu.com/s/1NAMUHcZvsIm7l6hMHeEQjQ?pwd=ogjn), [Lmdb-format Datasets](https://pan.baidu.com/share/init?surl=riMCN5iXTJ2g9fQjtlZswg&pwd=g3gj), and [JSON configurations](https://pan.baidu.com/share/init?surl=d7PTV2GK-fpGibcbtnQDqQ&pwd=dcwv). Put the RGB-format datasets and Lmdb-format datasets under [./deepfake/datasets](./deepfake/datasets) and JSON configurations under [./deepfake/preprocessing/dataset_json](./deepfake/preprocessing/dataset_json).

Note: It will take hours to download the dataset as they are stored on a Chinese platform. The downloading speeed is slow from UAE.

## Quick Start
### 1. Common perturbations

To obtain the baseline results. Run
```
python3 training/test.py \
--detector_path ./training/config/detector/xception.yaml \
--test_dataset "DFDCP" "UADFV" "Celeb-DF-v2" \
--weights_path ./training/weights/xception_best.pth
```
Replace the detector's name in detector_path and weights_path to test on other detectors.
The detectors used in our study are "xception", "ffd", "core", "spsl", and "srm".

To run the exepriments with perturbations, add an extra argument as shown below.

```
python3 training/test.py \
--detector_path ./training/config/detector/xception.yaml \
--test_dataset "DFDCP" "UADFV" "Celeb-DF-v2" \
--weights_path ./training/weights/xception_best.pth \
--perturbation snow
```

The available perturbations are "gaussian-noise", "poisson-noise", "gaussian-blur", "median-blur", "brightness-contrast", "saturation", "chromatic", "elastic-transform", "radial-distortion", "compress", "flip", "snow", and "fog".

### 2. Adversarial tasks

Open [generate_adv_images.ipynb](generate_adv_images.ipynb) and follow the steps to reproduce the experimenta in our study.