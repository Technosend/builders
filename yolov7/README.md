# yolov7の実行環境整備用

- 整備したPCのスペック

|ハード|スペック|
| ---|---|
| OS   | Ubuntu20.04 |
| GPU  | RTX3080Ti |
| Cuda | 11.1 |

- pythonのバージョン
- 3.9

## anacondaを利用した整備方法
```
conda env create -f anaconda/yolov7_env.yml
conda activate yolov7
pip install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html
```

## dockerを利用した整備方法
```
sh docker/build_docker.sh
```

## docker imageの起動方法
```
docker run --rm --gpus=all --name yolov7 -it --shm-size=64g yolov7_techno
```

### configureファイルをマウントしたい場合
- `/yolov7/myconfig` フォルダに，コンフィグファイルがマウントされる．
```
docker run --rm --gpus=all --name yolov7 -it -v your_host_path/:/yolov7/myconfig --shm-size=64g yolov7_techno
```