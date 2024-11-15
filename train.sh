# nohup python -m torch.distributed.launch --nproc_per_node=4 deepfake/training/train.py --detector_path deepfake/training/config/detector/sbi.yaml --no-save_ckpt --no-save_feat --ddp > my_output.log 2>&1 &

python training/train.py \
--detector_path training/config/detector/xception.yaml  \
--train_dataset "FaceForensics++" \
--test_dataset "FaceForensics++"

# python deepfake/training/train.py \
# --detector_path deepfake/training/config/detector/clip.yaml  \
# --train_dataset "FaceForensics++" \
# --test_dataset "FaceForensics++"

# python deepfake/training/train.py \
# --detector_path deepfake/training/config/detector/clip.yaml  \
# --train_dataset "FaceForensics++" \
# --test_dataset "FaceForensics++"