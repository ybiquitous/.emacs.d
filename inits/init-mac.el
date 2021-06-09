;; Swap command (⌘) and option (⌥) keys
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; Launch dictionary
(defun my/mac-dictionary ()
  (interactive)
  (browse-url (concat "dict://" (current-word))))
(bind-key "C-c D" #'my/mac-dictionary)

;; Emoji
;; https://github.crookster.org/emacs27-from-homebrew-on-macos-with-emoji/
(if (version< "27.0" emacs-version)
  (set-fontset-font "fontset-default" 'unicode "Apple Color Emoji" nil 'prepend))

(provide 'init-mac)
