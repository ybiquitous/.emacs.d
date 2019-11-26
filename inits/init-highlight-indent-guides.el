(use-package highlight-indent-guides
  :hook ((my-json-mode yaml-mode web-mode slim-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-method 'character))

(provide 'init-highlight-indent-guides)
