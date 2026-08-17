(use-package ido
  :custom
  (ido-case-fold t)
  (ido-enable-flex-matching t)
  (ido-everywhere t)
  (ido-mode 'both)
  (ido-use-virtual-buffers 'auto))

(use-package ido-vertical-mode
  :custom
  (ido-vertical-mode t))

(provide 'init-ido)
