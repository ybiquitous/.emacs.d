(use-package web-mode
  :mode ("\\.html\\'" "\\.erb\\'" "\\.jsx\\'" "\\.tsx\\'")
  :config
  (flycheck-add-mode 'typescript-tslint 'web-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode))

(provide 'init-web-mode)
