(use-package typescript-mode
  :after (flycheck)
  :delight "TS"
  :config
  (flycheck-add-mode 'javascript-eslint 'typescript-mode))

(use-package tide
  :after (typescript-mode)
  :config
  (defun my/setup-tide ()
    (tide-setup)
    (tide-hl-identifier-mode)
    (eldoc-mode))
  (add-hook 'typescript-mode-hook #'my/setup-tide)

  (defun my/setup-tide-on-tsx ()
    (when (string-equal "tsx" (file-name-extension buffer-file-name))
      (my/setup-tide)))
  (add-hook 'find-file-hook #'my/setup-tide-on-tsx))

(provide 'init-typescript)
