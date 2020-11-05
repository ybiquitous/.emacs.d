(use-package exec-path-from-shell
  :if window-system
  :custom
  (exec-path-from-shell-arguments '("-l"))
  :config
  (exec-path-from-shell-copy-env "HISTFILE")
  (exec-path-from-shell-copy-env "HISTSIZE")
  (exec-path-from-shell-copy-env "EDITOR")
  (exec-path-from-shell-copy-env "VISUAL")
  (exec-path-from-shell-copy-env "NODE_PATH")
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
