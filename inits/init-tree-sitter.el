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

(use-package treesit-fold
  :vc (:url "https://github.com/emacs-tree-sitter/treesit-fold")
  :delight " TS-Fold"
  :hook
  ((ruby-ts-mode yaml-ts-mode) . treesit-fold-mode)
  ((ruby-ts-mode yaml-ts-mode) . treesit-fold-indicators-mode))

;; TODO: Implement a `treesit-fold-parsers-hcl' function for `hcl-ts-mode'.

(provide 'init-tree-sitter)
