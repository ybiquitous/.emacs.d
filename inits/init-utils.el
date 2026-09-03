;; -*- lexical-binding: t -*-
(defun my/template-word-func (func)
  (let (word bounds start end)
    (setq word (thing-at-point 'symbol))
    (setq bounds (bounds-of-thing-at-point 'symbol))
    (setq start (car bounds))
    (setq end (cdr bounds))
    (delete-region start end)
    (insert (funcall func word))))

(use-package s
  :config
  (defun dasherize-word ()
    (interactive)
    (my/template-word-func 's-dashed-words))
  (defun lower-camel-case-word ()
    (interactive)
    (my/template-word-func 's-lower-camel-case))
  (defun upper-camel-case-word ()
    (interactive)
    (my/template-word-func 's-upper-camel-case)))

;; https://stackoverflow.com/questions/23378271/how-do-i-display-ansi-color-codes-in-emacs-for-any-mode
(defun my/display-ansi-colors ()
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-to-list 'auto-mode-alist '("\\.log\\'" . my/display-ansi-colors))

(defun my/copy-file-path ()
  "Copy the current buffer file path to `kill-ring'."
  (interactive)
  (if-let* ((path (buffer-file-name))
            (root (vc-root-dir))
            (result (if root (file-relative-name path root) (expand-file-name path))))
    (progn
      (kill-new result)
      (message "Copied `%s'" result))
    (message "This buffer is not visiting a file.")))

(require 'bind-key)
(bind-keys*
  ("C-c c d" . dasherize-word)
  ("C-c c l" . lower-camel-case-word)
  ("C-c c u" . upper-camel-case-word))

(provide 'init-utils)
