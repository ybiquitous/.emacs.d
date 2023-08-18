(defcustom my/formatter-command "prettier"
  "A formatter command."
  :group 'my/formatter
  :type 'string
  :safe #'stringp)

(defcustom my/formatter-command-args '("--write")
  "A command arguments for Prettier."
  :group 'my/formatter
  :type 'list)

(defun my/formatter ()
  "Run a formatter."
  (interactive)
  (if-let ((formatter-path (executable-find my/formatter-command)))
    (let* ((target-file-path (expand-file-name buffer-file-name))
            (command-elements (append (list formatter-path) my/formatter-command-args (list target-file-path))))
      (message "%s" command-elements)
      (save-buffer)
      (shell-command (mapconcat #'shell-quote-argument command-elements " "))
      (revert-buffer t t t))
    (message "`%s' command is not found" my/formatter-command)))

(defun my/formatter--setq-locals (cmd args)
  (setq-local
    my/formatter-command cmd
    my/formatter-command-args args))

(add-hook 'ruby-ts-mode-hook
  (lambda () (my/formatter--setq-locals "bundle" '("exec" "standardrb" "--fix"))))

(define-minor-mode my/formatter-mode
  "Minor mode for a formatter."
  :lighter " Fmt"
  (if my/formatter-mode
    (add-hook 'after-save-hook 'my/formatter t t)
    (remove-hook 'after-save-hook 'my/formatter t)))

(with-eval-after-load 'bind-key
  (bind-key "C-c m p" 'my/formatter)
  (bind-key "C-c m P" 'my/formatter-mode))

(provide 'init-formatter)
