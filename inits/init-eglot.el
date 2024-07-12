(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
    `((ruby-mode ruby-ts-mode) . ,(eglot-alternatives
                                    '(("steep" "langserver" "--verbose")
                                      ("ruby-lsp"))))))

(provide 'init-eglot)
