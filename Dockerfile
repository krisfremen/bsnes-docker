FROM debian:buster

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/bsnes-emu/bsnes
RUN apt-get install -y build-essential
RUN cd bsnes/bsnes && echo $(pwd) && make