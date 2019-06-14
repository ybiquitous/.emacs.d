(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
          ("\\.markdown\\'" . gfm-mode))
  :custom
  (markdown-command "github-markup-custom")
  (markdown-command-needs-filename t)
  (markdown-spaces-after-code-fence 0))

(provide 'init-markdown)
