(use-package lsp-mode
  :commands lsp
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :custom
  (lsp-disabled-clients '(deno-ls))
  (lsp-rubocop-use-bundler t))

(provide 'init-lsp)
