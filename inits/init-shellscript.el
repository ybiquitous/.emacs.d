(use-package sh-script
  ;; https://github.com/direnv/direnv
  :mode ("\\.envrc\\'" . sh-mode)
  :custom
  (sh-basic-offset tab-width))

(provide 'init-shellscript)
