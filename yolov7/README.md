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

- cuda11.1
```
sh anaconda/create_yolov7_cu111.sh
```

- cudaを利用しない場合
```
conda env create -f anaconda/yolov7_wo_cuda_env.yml
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