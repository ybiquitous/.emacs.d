(defun my/shell-mode-hook ()
  (local-set-key (kbd "M-p") 'comint-previous-matching-input-from-input)
  (local-set-key (kbd "M-n") 'comint-next-matching-input-from-input)
  (setq-local comint-input-ring-file-name (getenv "HISTFILE"))
  (comint-read-input-ring))
(add-hook 'shell-mode-hook #'my/shell-mode-hook)

(defun my/eshell-mode-hook ()
  (setq-local eshell-history-file-name (getenv "HISTFILE")))
(add-hook 'eshell-mode-hook #'my/eshell-mode-hook)

(provide 'init-shell)
