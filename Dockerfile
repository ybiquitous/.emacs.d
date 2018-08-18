FROM ubuntu:latest

COPY . .

RUN apt-get update -q && \
    apt-get install emacs -y && \
    emacs --version

RUN ./test.sh
