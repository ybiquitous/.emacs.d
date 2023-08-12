(use-package highlight-indent-guides
  :hook ((prog-mode yaml-ts-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-auto-character-face-perc 80)
  (highlight-indent-guides-method 'character))

(provide 'init-highlight-indent-guides)
