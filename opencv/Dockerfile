FROM python:3.9-slim as base
FROM base as builder

FROM base
# copy only the dependencies installation from the 1st stage image
WORKDIR home/app


# avoid stuck build due to user prompt
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --no-install-recommends -y sudo build-essential wget vim unzip libprotobuf-dev protobuf-compiler
RUN sudo apt-get install --no-install-recommends -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN wget https://github.com/opencv/opencv/archive/4.1.1.zip
RUN unzip 4.1.1
RUN rm 4.1.1.zip
RUN git clone https://github.com/Tencent/ncnn.git

# set default sh to bash
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
