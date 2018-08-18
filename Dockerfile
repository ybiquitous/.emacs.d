FROM ubuntu:latest

RUN apt-get update -q && \
    apt-get install emacs -y && \
    emacs --version

COPY . .

RUN ./test.sh
