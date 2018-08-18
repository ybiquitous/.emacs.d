(use-package avy
  :bind (("C-'" . avy-goto-char-timer)
          ("M-g g" . avy-goto-line)
          ("M-g M-g" . avy-goto-line))
  :config
  (avy-setup-default))

(provide 'init-avy)
