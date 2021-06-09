(defun my/smart-apostrophe ()
  (interactive)
  (insert "’"))

(define-minor-mode my/smart-apostrophe-mode
  "Convert a single quote to an apostrophe."
  :lighter " Apos"
  :keymap
  '(((kbd "'") . my/smart-apostrophe)))

(provide 'init-smart-apostrophe-mode)
