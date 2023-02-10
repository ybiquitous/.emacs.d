(require 'wdired)
(setq wdired-allow-to-change-permissions t)
(define-key dired-mode-map "e" 'wdired-change-to-wdired-mode)

(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :commands (dired-sidebar-toggle-sidebar)
  :custom
  (dired-sidebar-width 25)
  (dired-sidebar-use-custom-font t)
  :config
  (defun my/disable-linum-mode-on-dired-sidebar-mode ()
    (linum-mode -1))
  (add-hook 'dired-sidebar-mode-hook #'my/disable-linum-mode-on-dired-sidebar-mode))

(provide 'init-dired)
