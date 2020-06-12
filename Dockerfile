FROM debian:buster
# Git it
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/bsnes-emu/bsnes
# Dependencies
RUN apt-get install -y build-essential libx11-dev
RUN apt-get install -y libcairo2-dev
RUN apt-get install -y libgtksourceview2.0-dev
RUN apt-get install -y mesa-common-dev
RUN apt-get install -y libxv-dev
RUN apt-get install -y libasound2-dev
RUN apt-get install -y libao-dev
RUN apt-get install -y libopenal-dev
RUN apt-get install -y libsdl2-dev
# Make it
RUN cd bsnes/bsnes && echo $(pwd) && make