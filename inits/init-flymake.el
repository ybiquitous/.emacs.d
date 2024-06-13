(add-hook 'emacs-lisp-mode-hook #'flymake-mode)
(add-hook 'ruby-base-mode-hook #'flymake-mode)

(use-package flymake-eslint)

(provide 'init-flymake)
