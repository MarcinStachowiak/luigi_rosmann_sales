FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && apt-get install -y python3.6 python3.6-dev python3-pip

RUN ln -sfn /usr/bin/python3.6 /usr/bin/python3 && ln -sfn /usr/bin/python3 /usr/bin/python && ln -sfn /usr/bin/pip3 /usr/bin/pip

RUN pip --no-cache-dir install \
    numpy \
    scipy \
    jupyter \
    matplotlib \
    Pillow \
    scikit-learn \
    pandas \
    tensorflow \
    nltk \
    sklearn \
    gensim \
    wget

RUN mkdir /data

WORKDIR /data

