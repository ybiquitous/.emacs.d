(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-enable-snippet nil)
  (lsp-restart "auto-restart"))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package company-lsp
  :commands company-lsp)

(provide 'init-lsp)
