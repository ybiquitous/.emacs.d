(require 'sh-script)
(setq sh-basic-offset tab-width)

;; https://github.com/direnv/direnv
(add-to-list 'auto-mode-alist '("\\.envrc\\'" . sh-mode))

(provide 'init-shellscript)
