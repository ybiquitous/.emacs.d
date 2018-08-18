(require 'ido)
(ido-mode t)
(ido-everywhere t)

(use-package ido-vertical-mode
  :config
  (ido-vertical-mode t))

(provide 'init-ido)
