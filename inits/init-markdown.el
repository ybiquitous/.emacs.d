(use-package markdown-mode
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))
  :init
  (defun my/customize-markdown-mode ()
    (setq-local whitespace-line-column 1000)
    (outline-minor-mode)
    (visual-line-mode))
  (add-hook 'markdown-mode-hook #'my/customize-markdown-mode)
  :custom
  (markdown-command "comrak --gfm -e footnotes --unsafe")
  (markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown-dark.css"
                        "https://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/styles/github-dark.min.css"))
  (markdown-xhtml-header-content "
<style>
  body {
    background: #151b23;
    margin: 0;
  }
  .markdown-body {
    margin: 2rem auto;
    padding: 2rem 4rem;
    width: clamp(420px, 50rem, 80rem);
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
