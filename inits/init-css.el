(require 'css-mode)
(setq css-indent-offset tab-width)

(font-lock-add-keywords 'scss-mode
  '(("$[-[:alnum:]]+" . font-lock-constant-face)))

(provide 'init-css)
