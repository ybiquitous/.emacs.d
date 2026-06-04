(use-package exec-path-from-shell
  :if window-system
  :custom
  (exec-path-from-shell-variables '("PATH" "MANPATH"
                                    "HISTFILE" "HISTSIZE"
                                    "EDITOR" "VISUAL"
                                    "LANG"
                                    ))
  :config
  (setenv "INSIDE_EMACS" emacs-version)
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
