;; Swap command (⌘) and option (⌥) keys
;; https://qiita.com/usobuku/items/39342e2a4137dde894b4
(setq ns-alternate-modifier (quote super))
(setq ns-command-modifier (quote meta))

;; Launch dictionary
(defun my/mac-dictionary ()
  (interactive)
  (browse-url (concat "dict://" (current-word))))
(bind-key "C-c D" #'my/mac-dictionary)

(provide 'init-mac)
