(use-package eglot
  :custom
  (eglot-autoshutdown t)
  :config
  (eglot-upgrade-eglot)
  (add-to-list 'eglot-server-programs
    `((yaml-mode yaml-ts-mode) . ,(eglot-alternatives
                                    '(("actions-languageserver" "--stdio")))))

  ;; TypeScript 7.0 (tsc) has the LSP built-in support.
  (add-to-list 'eglot-server-programs
    `((js-mode js-ts-mode typescript-mode typescript-ts-mode tsx-ts-mode) . ,(eglot-alternatives
                                                                               '(("typescript-language-server" "--stdio")
                                                                                 ("tsc" "--lsp" "--stdio"))))))

(provide 'init-eglot)
