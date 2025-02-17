(use-package treesit
  :ensure nil
  :custom
  (treesit-font-lock-level 4))

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(my/download-github-package "https://github.com/emacs-tree-sitter/treesit-fold")
(use-package treesit-fold
  :load-path (lambda () "git-packages/treesit-fold")
  :delight " TS-Fold"
  :hook ((ruby-ts-mode yaml-ts-mode) . treesit-fold-mode))

(use-package treesit-fold-indicators
  :load-path (lambda () "git-packages/treesit-fold")
  :hook ((ruby-ts-mode yaml-ts-mode) . treesit-fold-indicators-mode))

(provide 'init-tree-sitter)
