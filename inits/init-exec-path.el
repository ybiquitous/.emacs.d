(use-package exec-path-from-shell
  :if window-system
  :custom
  (exec-path-from-shell-variables '("PATH" "MANPATH"
                                    "HISTFILE" "HISTSIZE"
                                    "EDITOR" "VISUAL"
                                    "LANG"
                                    "PUPPETEER_EXECUTABLE_PATH" ;; required by mermaid-mode & mermaid-cli
                                    ))
  :config
  (setenv "INSIDE_EMACS" emacs-version)
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
