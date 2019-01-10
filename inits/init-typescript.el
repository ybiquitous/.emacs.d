(use-package typescript-mode
  :after (flycheck)
  :delight "TS"
  :config
  (flycheck-add-mode 'javascript-eslint 'typescript-mode))

(provide 'init-typescript)
