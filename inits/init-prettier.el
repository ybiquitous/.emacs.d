(defun my/prettier ()
  (interactive)
  (let* ((prettier-command
           (format "%s --write %s"
             (shell-quote-argument (executable-find "prettier"))
             (shell-quote-argument (expand-file-name buffer-file-name)))))
    (shell-command prettier-command)
    (revert-buffer t t t)
    (if (fboundp 'flycheck-buffer) (flycheck-buffer))))

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
