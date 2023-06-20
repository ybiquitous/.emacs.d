(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))
  :init
  (defun my/customize-markdown-mode ()
    (setq-local whitespace-line-column 1000)
    (visual-line-mode))
  (add-hook 'markdown-mode-hook #'my/customize-markdown-mode)
  :custom
  (markdown-command "cmark-gfm -e autolink -e footnotes -e strikethrough -e table -e tagfilter -e tasklist --unsafe")
  (markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown-light.css"
                        "https://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/styles/github.min.css"))
  (markdown-xhtml-header-content "
<style>
  body {
    margin: 2rem auto;
    max-width: 50rem;
  }
</style>
<script src=\"https://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/highlight.min.js\"></script>
<script>hljs.highlightAll();</script>")
  (markdown-xhtml-body-preamble "<div class=\"markdown-body\">")
  (markdown-xhtml-body-epilogue "</div>")
  (markdown-command-needs-filename t)
  (markdown-spaces-after-code-fence 0)
  (markdown-fontify-code-blocks-natively t))

(provide 'init-markdown)
