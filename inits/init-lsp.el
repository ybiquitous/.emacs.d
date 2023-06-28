(use-package lsp-mode
  :commands lsp
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :custom
  (lsp-disabled-clients '(deno-ls)))

;; https://emacs-lsp.github.io/lsp-mode/page/adding-new-language/
(with-eval-after-load 'lsp-mode
  (lsp-register-client
    (make-lsp-client :new-connection (lsp-stdio-connection '("bundle" "exec" "rubocop" "--lsp"))
                     :activation-fn (lsp-activate-on "ruby")
                     :add-on? t
                     :server-id 'rubocop-ls)))

(provide 'init-lsp)
