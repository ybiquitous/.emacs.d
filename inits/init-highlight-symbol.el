(use-package highlight-symbol
  :bind ("C-c r" . highlight-symbol-query-replace)
  :hook ((prog-mode . highlight-symbol-mode)
         (prog-mode . highlight-symbol-nav-mode))
  :custom
  (highlight-symbol-idle-delay 0.5))

(provide 'init-highlight-symbol)
