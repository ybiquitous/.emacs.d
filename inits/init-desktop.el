(require 'desktop)
(setq desktop-files-not-to-save nil)
(setq desktop-globals-to-save (quote (extended-command-history)))
(setq desktop-restore-frames nil)
(desktop-save-mode t)

(provide 'init-desktop)
