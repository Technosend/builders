conda env create -f anaconda/yolov7_env.yml
# source ~/anaconda3/etc/profile.d/conda.sh
# conda init bash
conda activate yolov7
pip install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html