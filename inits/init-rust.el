(use-package rust-mode
  :after tree-sitter
  :custom
  (rust-format-on-save nil)
  (rust-mode-treesitter-derive t))

(provide 'init-rust)
