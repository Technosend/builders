# mmdetectionの実行環境整備用

整備したPCのスペック
|ハード|スペック|
| ---|---|
| OS | Ubuntu20.04 |
| GPU| Geforce1050 |
| cuda | 11.1 |

- pythonのバージョン
- 3.9

## anacondaを利用した整備方法
```
sh anaconda/create_env_cu111.sh
```

## dockerを利用した整備方法
```
docker build -t mmdetection docker/
```

## docker imageの起動方法
```
docker run --rm --gpus all -it mmdetection
```

- 別のディレクトリをマウントしたい場合

- `/mmdetection/myconfig`にマウントされる
```
docker run --rm --gpus all -it -v your_host_path/:/mmdetection/myconfig mmdetection
```