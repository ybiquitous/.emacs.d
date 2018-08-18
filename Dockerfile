FROM ubuntu:latest

RUN apt-get update -q && \
    apt-get install emacs ca-certificates -y && \
    emacs --version

COPY . .emacs.d

WORKDIR .emacs.d

RUN ./test.sh
