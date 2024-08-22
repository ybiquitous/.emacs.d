(use-package magit
  :pin melpa-stable ;; TODO: https://github.com/magit/magit/issues/5206
  :bind (("C-x g" . magit-status)))

(use-package git-commit
  :config
  (add-hook 'git-commit-mode-hook #'flyspell-mode)
  :custom
  (git-commit-summary-max-length 100)
  (fill-column 150))

;; disable git pager
(setenv "GIT_PAGER" "")

(provide 'init-git)
