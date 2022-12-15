# create the docker container, you can change the share memory size if you have more.
FROM nvcr.io/nvidia/pytorch:21.08-py3

# apt install required packages
RUN apt-get update -y
RUN apt-get install -y zip htop screen libgl1-mesa-glx
RUN apt-get install nano -y

# pip install required packages
RUN pip install seaborn thop

# go to code folder
WORKDIR /yolov7