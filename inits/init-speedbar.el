(use-package speedbar
  :bind (("C-x C-n" . speedbar))
  :custom
  (speedbar-directory-unshown-regexp "^$")
  (speedbar-update-flag nil)
  (speedbar-show-unknown-files t))

(provide 'init-speedbar)
