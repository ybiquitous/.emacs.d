;; -*- lexical-binding: t -*-
(use-package magit
  :config
  (add-hook 'git-commit-mode-hook #'flyspell-mode)
  :custom
  (git-commit-summary-max-length 100)
  (fill-column 150)
  (magit-define-global-key-bindings 'recommended)
  (magit-diff-refine-hunk 'all)
  (magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  (magit-repository-directories '(("~/git" . 2)))
  (magit-save-repository-buffers 'dontask))

;; disable git pager
(setenv "GIT_PAGER" "")

(provide 'init-git)
