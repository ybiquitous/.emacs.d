;; -*- lexical-binding: t -*-
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
  :custom
  (treesit-fold-line-count-show t)
  :config
  (global-treesit-fold-mode)
  (global-treesit-fold-indicators-mode))

(provide 'init-tree-sitter)
