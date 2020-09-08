(use-package flycheck
  :custom
  (flycheck-temp-prefix ".flycheck"))

(use-package package-lint)

(use-package flycheck-package
  :config
  (flycheck-package-setup))

(provide 'init-flycheck)
