(my/download-github-package "https://github.com/zerolfx/copilot.el")

(use-package copilot
  :after (:all editorconfig s)
  :load-path (lambda () "git-packages/copilot.el")
  ;; :hook
  ;; (emacs-lisp-mode . copilot-mode)
  :bind (:map copilot-completion-map
          ("<tab>" . 'copilot-accept-completion)
          ("TAB" . 'copilot-accept-completion)
          ("C-TAB" . 'copilot-accept-completion-by-word)
          ("C-<tab>" . 'copilot-accept-completion-by-word)))

(provide 'init-copilot)
