FROM ubuntu:latest

RUN apt-get update -q && \
    apt-get install -y \
            emacs-nox \
            ca-certificates \
            aspell && \
    emacs --version

COPY . .emacs.d

WORKDIR .emacs.d

RUN ./test.sh
