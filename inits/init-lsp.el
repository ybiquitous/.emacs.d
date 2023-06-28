(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-disabled-clients '(deno-ls)))

(use-package lsp-ui
  :commands lsp-ui-mode)

(provide 'init-lsp)
