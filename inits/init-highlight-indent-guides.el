(use-package highlight-indent-guides
  :after (yaml-mode)
  :hook ((yaml-mode my-json-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-method 'character))

(provide 'init-highlight-indent-guides)
