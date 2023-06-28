(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-disabled-clients '(deno-ls)))

(provide 'init-lsp)
