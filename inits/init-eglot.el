;; Emacs 29 will bundle Eglot. See https://github.com/joaotavora/eglot#emacscore
;; (if (version< emacs-version "29.0")
;;   (use-package eglot
;;     :config
;;     (add-to-list 'eglot-server-programs '((ruby-mode enh-ruby-mode) . ("typeprof" "--lsp")))
;;     (add-to-list 'eglot-server-programs '((ruby-mode enh-ruby-mode) . ("bundle" "exec" "rubocop" "--lsp")))))

(provide 'init-eglot)
