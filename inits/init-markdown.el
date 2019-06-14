(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
          ("\\.markdown\\'" . gfm-mode))
  :custom
  (markdown-command "github-markup-custom")
  (markdown-command-needs-filename t)
  (markdown-spaces-after-code-fence 0)
  (markdown-content-type "application/xhtml+xml")
  (markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown.min.css"
                        "https://cdn.jsdelivr.net/npm/highlightjs/styles/github.min.css"))
  (markdown-xhtml-header-content "
<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no' />
<style>
body {
  max-width: 50rem;
  width: 100%;
  margin: 3rem auto;
  padding: 0 0.5rem;
}
</style>")
  (markdown-xhtml-body-epilogue "
<script src='https://cdn.jsdelivr.net/npm/highlightjs'></script>
<script>
  document.body.classList.add('markdown-body');
  document.querySelectorAll('pre[lang] > code').forEach(code => {
    code.classList.add(code.parentElement.lang);
    hljs.highlightBlock(code);
  });
</script>"))

(provide 'init-markdown)
