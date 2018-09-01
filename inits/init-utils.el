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

(require 'bind-key)
(bind-keys*
  ("C-c c d" . dasherize-word)
  ("C-c c l" . lower-camel-case-word)
  ("C-c c u" . upper-camel-case-word))

(provide 'init-utils)
