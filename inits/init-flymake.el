(use-package flymake
  :hook
  (emacs-lisp-mode . flymake-mode)
  (ruby-base-mode . flymake-mode))

(use-package flymake-eslint)

(my/download-github-package "https://github.com/orzechowskid/flymake-stylelint")
(use-package flymake-stylelint
  :load-path (lambda () "git-packages/flymake-stylelint"))

(my/download-github-package "https://github.com/ybiquitous/flymake-hadolint")
(use-package flymake-hadolint
  :load-path (lambda () "git-packages/flymake-hadolint"))

(provide 'init-flymake)
