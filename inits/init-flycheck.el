(use-package flycheck
  :hook ((gfm-mode git-commit-mode) . flycheck-mode)
  :custom
  (flycheck-temp-prefix ".flycheck"))

(use-package flycheck-inline
  :hook (flycheck-mode . flycheck-inline-mode))

(use-package package-lint)

(use-package flycheck-package
  :config
  (flycheck-package-setup))

(provide 'init-flycheck)
