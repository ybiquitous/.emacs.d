#!/bin/sh
set -e

${EMACS:=emacs} --no-window-system --batch --eval '
(progn
  (setq debug-on-error t)
  (setq user-emacs-directory default-directory)
  (load-file (expand-file-name "init.el" default-directory))
  (run-hooks (quote after-init-hook)))
'
