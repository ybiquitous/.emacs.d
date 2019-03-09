(use-package emojify
  :hook (markdown-mode . emojify-mode)
  :config
  (make-directory emojify-emojis-dir t))

(provide 'init-emojify)
