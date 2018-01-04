FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vim
RUN apt-get -y install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev python-crypto
RUN apt-get -y install cpio

RUN id build 2>/dev/null || useradd --uid 1000 --create-home build
RUN apt-get -y install sudo
RUN echo "build ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers

USER build
WORKDIR /home/build/
CMD "/bin/bash"

