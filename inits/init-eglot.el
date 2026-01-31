(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
    `((ruby-mode ruby-ts-mode) . ,(eglot-alternatives
                                    '(("steep" "langserver" "--verbose")
                                      ("ruby-lsp"))))
    `((yaml-mode yaml-ts-mode) . ,(eglot-alternatives
                                    '(("actions-languageserver" "--stdio"))))))

(provide 'init-eglot)
