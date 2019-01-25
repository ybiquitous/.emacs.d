(use-package typescript-mode
  :delight "TS")

(use-package tide
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode))
  :config
  (defun my/enable-tsx-on-web-mode ()
    (when (string-equal "tsx" (file-name-extension buffer-file-name))
      (tide-setup)
      (tide-hl-identifier-mode)))
  (add-hook 'web-mode-hook #'my/enable-tsx-on-web-mode))

;; Enable web-mode on TSX
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(flycheck-add-mode 'typescript-tslint 'web-mode)

(provide 'init-typescript)
