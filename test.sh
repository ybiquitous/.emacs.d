#!/bin/sh
set -e

${EMACS:=emacs} -nw --batch --eval '(load-file "./init.el")'
