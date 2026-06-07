(use-package mermaid-mode
  :custom
  (mermaid-flags "--scale=2")
  (mermaid-output-format ".png")
  (mermaid-tmp-dir (concat (expand-file-name "tmp" "~") "/")))

(provide 'init-mermaid)
