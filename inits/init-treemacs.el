(use-package treemacs
  :bind (("M-0" . treemacs-select-window)
          ("C-x t t" . treemacs)
          ("C-x t a" . treemacs-add-project-to-workspace))
  :custom
  (treemacs-width 25)
  :config
  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode t)
  (treemacs-git-mode 'extended))

(use-package treemacs-projectile
  :after treemacs projectile)

(provide 'init-treemacs)
