(use-package nxml-mode
  :ensure nil
  :custom
  (nxml-auto-insert-xml-declaration-flag t)
  (nxml-default-buffer-file-coding-system (quote utf-8))
  (nxml-slash-auto-complete-flag t))

(provide 'init-xml)
