(use-package wdired
  :custom
  (wdired-allow-to-change-permissions t)
  :config
  (bind-keys :map dired-mode-map
    ("e" . wdired-change-to-wdired-mode)))

(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :commands (dired-sidebar-toggle-sidebar)
  :custom
  (dired-sidebar-width 25)
  (dired-sidebar-use-custom-font t))

(provide 'init-dired)
