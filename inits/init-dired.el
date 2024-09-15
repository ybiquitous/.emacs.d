(use-package wdired
  :custom
  (wdired-allow-to-change-permissions t)
  :config
  (bind-keys :map dired-mode-map
    ("e" . wdired-change-to-wdired-mode)))

(provide 'init-dired)
