#!/bin/sh
set -e

${EMACS:=emacs} --no-window-system --batch \
                --eval '(let ((user-emacs-directory default-directory))
                          (load-file (expand-file-name "init.el" user-emacs-directory))
                          (run-hooks (quote after-init-hook)))'
