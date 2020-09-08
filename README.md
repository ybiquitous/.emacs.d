# `.emacs.d`

> My personal `~/.emacs.d`

## Install

```sh
cd ~ && git clone https://github.com/ybiquitous/.emacs.d.git
```

## Environment-specific customization

Put and edit `~/.emacs-env.el` file.

## Test

Via [Docker](https://www.docker.com/). For details, see [`Dockerfile`](Dockerfile).

```sh
docker build . [--no-cache]
```
