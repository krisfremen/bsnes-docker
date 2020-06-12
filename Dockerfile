FROM debian:buster
# Git it
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/bsnes-emu/bsnes
# Dependencies
RUN apt-get install -y build-essential libx11-dev libcairo2-dev libgtksourceview2.0-dev mesa-common-dev libxv-dev libasound2-dev libao-dev libopenal-dev libsdl2-dev
# Make it
RUN cd bsnes/bsnes && echo $(pwd) && make