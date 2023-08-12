(use-package whitespace
  :custom
  (whitespace-action '(auto-cleanup))
  (whitespace-display-mappings '((space-mark ?\u3000 [?\u25a1])
                                 (tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])))
  (whitespace-space-regexp "\\(\\u3000+\\)")
  (whitespace-line-column 120)
  (whitespace-style '(face spaces trailing lines-tail space-mark tab-mark))
  (global-whitespace-mode t))

(provide 'init-whitespace)
