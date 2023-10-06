;; Install from GitHub
(let* ((repo-url "https://github.com/zerolfx/copilot.el")
        (package-dir (expand-file-name "git-packages/copilot.el" user-emacs-directory)))
  (message "Installing or updating copilot.el...")
  (if (file-directory-p package-dir)
    (shell-command (format "git -C '%s' pull --quiet" package-dir))
    (shell-command (format "git clone --quiet '%s' '%s'" repo-url package-dir)))
  (use-package copilot
    :load-path "git-packages/copilot.el/"
    ;; :hook
    ;; (emacs-lisp-mode . copilot-mode)
    :bind (:map copilot-completion-map
            ("<tab>" . 'copilot-accept-completion)
            ("TAB" . 'copilot-accept-completion)
            ("C-TAB" . 'copilot-accept-completion-by-word)
            ("C-<tab>" . 'copilot-accept-completion-by-word))))

(provide 'init-copilot)
