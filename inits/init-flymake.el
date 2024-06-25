(use-package flymake
  :hook
  (emacs-lisp-mode . flymake-mode)
  (ruby-base-mode . flymake-mode))

(use-package flymake-eslint)

;; TODO: https://github.com/orzechowskid/flymake-stylelint/pull/1
(my/download-github-package "https://github.com/ybiquitous/flymake-stylelint" "unix-formatter")
(use-package flymake-stylelint
  :load-path (lambda () "git-packages/flymake-stylelint"))

(provide 'init-flymake)
