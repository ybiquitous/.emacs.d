(use-package typescript-mode
  :after tree-sitter
  :delight "TS"
  :config
  (define-derived-mode typescript-tsx-mode typescript-mode "TSX")
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-tsx-mode))
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescript-tsx-mode . tsx))
  (add-hook 'typescript-tsx-mode-hook #'tree-sitter-hl-mode))

(provide 'init-typescript)
