(use-package ruby-mode
  :custom
  (ruby-insert-encoding-magic-comment nil))

(use-package ruby-electric
  :hook (ruby-base-mode . ruby-electric-mode))

(use-package rbs-mode)

(provide 'init-ruby)
