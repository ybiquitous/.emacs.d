(use-package magit
  :config
  (add-hook 'git-commit-mode-hook #'flyspell-mode)
  :custom
  (git-commit-summary-max-length 100)
  (fill-column 150))

;; disable git pager
(setenv "GIT_PAGER" "")

(provide 'init-git)
