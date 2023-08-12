(use-package desktop
  :custom
  (desktop-files-not-to-save nil)
  (desktop-globals-to-save (quote (extended-command-history)))
  (desktop-restore-frames nil)
  (desktop-save-mode t))

(provide 'init-desktop)
