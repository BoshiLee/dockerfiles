FROM python:3.8
# copy only the dependencies installation from the 1st stage image

# avoid stuck build due to user prompt
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --no-install-recommends -y sudo ssh \
	build-essential \
	wget \
	vim \
	unzip \
	git \
	cmake \
	gcc \
	g++ \
	gdb \
	clang \
	rsync \
	tar \
	apt-utils \
	openssh-server \
	gdb \
	gdbserver \
	ca-certificates

WORKDIR /home/app

ADD requirments.txt /home/app
RUN pip install -r requirments.txt
