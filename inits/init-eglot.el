(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
    `((ruby-mode ruby-ts-mode) . ,(eglot-alternatives '(("bundle" "exec" "steep" "langserver" "--verbose"))))))

(provide 'init-eglot)
