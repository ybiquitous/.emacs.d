(use-package magit
  :bind (("C-x g" . magit-status)))

(use-package git-commit
  :config
  (add-hook 'git-commit-mode-hook #'flyspell-mode)
  :custom
  (git-commit-summary-max-length 100)
  (fill-column 100))

;; disable git pager
(setenv "GIT_PAGER" "")

(provide 'init-git)
