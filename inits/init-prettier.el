(defun my/prettier ()
  (interactive)
  (let* ((prettier-executable (executable-find "prettier")))
    (if prettier-executable
      (progn
        (shell-command
          (format "%s --write %s"
            (shell-quote-argument prettier-executable)
            (shell-quote-argument (expand-file-name buffer-file-name))))
        (revert-buffer t t t))
      (message "Prettier not found"))))

(require 'bind-key)
(bind-key "C-c m p" 'my/prettier)
(bind-key "C-c m P" 'my/prettier-mode)

(define-minor-mode my/prettier-mode
  "Minor mode for Prettier"
  :lighter " Prettier"
  (if my/prettier-mode
    (add-hook 'after-save-hook 'my/prettier t t)
    (remove-hook 'after-save-hook 'my/prettier t)))

(provide 'init-prettier)
