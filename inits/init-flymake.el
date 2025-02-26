(use-package flymake
  :hook
  (emacs-lisp-mode . flymake-mode)
  (ruby-base-mode . flymake-mode))

(use-package flymake-eslint)

(use-package flymake-stylelint
  :vc (:url "https://github.com/orzechowskid/flymake-stylelint"))

(use-package flymake-hadolint
  :vc (:url "https://github.com/ybiquitous/flymake-hadolint"))

(provide 'init-flymake)
