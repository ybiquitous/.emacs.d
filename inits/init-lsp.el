(use-package lsp-mode
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

;; NOTE: lsp-mode requires implicitly yasnippet.
(use-package yasnippet
  :init
  (add-hook 'prog-mode-hook #'yas-minor-mode))

(provide 'init-lsp)
