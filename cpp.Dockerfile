# our local base image
#FROM ubuntu:16.04
FROM sshd

LABEL description="Container to debug C++ programms inside protected environment." 

# install build dependencies 
RUN apt-get update 
RUN apt-get upgrade
RUN apt-get install -y \
g++ \
openssh-server \
make \
cmake \
gdb \
gdbserver \
vim

EXPOSE 1234

# Setup the default user.
#RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo ubuntu
#RUN echo 'ubuntu:ubuntu' | chpasswd
#USER ubuntu
#WORKDIR /home/ubuntu

