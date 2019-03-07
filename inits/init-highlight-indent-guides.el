(use-package highlight-indent-guides
  :after (yaml-mode web-mode rjsx-mode)
  :hook ((my-json-mode yaml-mode web-mode rjsx-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-method 'character))

(provide 'init-highlight-indent-guides)
