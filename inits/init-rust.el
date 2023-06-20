(use-package rust-mode
  :after tree-sitter
  :custom
  (rust-format-on-save nil)
  :config
  (add-hook 'rust-mode-hook #'tree-sitter-hl-mode))

(provide 'init-rust)
