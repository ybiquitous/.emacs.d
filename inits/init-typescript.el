(use-package typescript-mode
  :delight "TS")

(use-package tide
  :config
  (defun my/setup-tide-mode ()
    (tide-setup)
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    (company-mode +1))
  (add-hook 'typescript-mode-hook #'my/setup-tide-mode)

  ;; TSX
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (flycheck-add-mode 'typescript-tslint 'web-mode)
  (defun my/enable-tsx-on-web-mode ()
    (if (string-equal "tsx" (file-name-extension buffer-file-name))
      (my/setup-tide-mode)
      (setq-local flycheck-disabled-checkers '(typescript-tslint tsx-tide jsx-tide))))
  (add-hook 'web-mode-hook #'my/enable-tsx-on-web-mode))

(provide 'init-typescript)
