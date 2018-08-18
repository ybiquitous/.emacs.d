(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-temp-prefix ".flycheck"))

(use-package package-lint)

(use-package flycheck-package
  :config
  (flycheck-package-setup)
  :custom
  (flycheck-disabled-checkers '(scss-lint ruby-reek)))

(provide 'init-flycheck)
