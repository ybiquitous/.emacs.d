(use-package eglot
  :custom
  (eglot-autoshutdown t)
  :config
  (add-to-list 'eglot-server-programs
    `((yaml-mode yaml-ts-mode) . ,(eglot-alternatives
                                    '(("actions-languageserver" "--stdio"))))))

(provide 'init-eglot)
