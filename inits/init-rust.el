(use-package rust-mode
  :after tree-sitter
  :custom
  (rust-format-on-save t)
  :config
  (add-hook 'rust-mode-hook #'tree-sitter-hl-mode))

(provide 'init-rust)
