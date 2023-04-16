FROM tensorflow/tensorflow:latest-gpu-jupyter

ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER York-yang

RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo 

RUN apt-get install -y software-properties-common \
    libgl1-mesa-dev \
    libsm6 \
    libxrender1 \
    libxext-dev \
    curl \
    nano \
    wget \
    libjpeg-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip

RUN pip3 install albumentations[imgaug] \
    matplotlib==3.2.2 \
    numpy==1.23.5 \
    opencv-python==4.5.3.56 \
    pandas==1.3.5 \
    scikit-image==0.18.3 \
    scikit-learn==1.0.2 \ 
    Pillow==9.1.0 \
    labelme==5.0.1 \
    jupyter \
    argparse \
    ipywidgets \ 
    widgetsnbextension

USER root

WORKDIR /workspace
