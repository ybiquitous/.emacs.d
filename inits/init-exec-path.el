(use-package exec-path-from-shell
  :if window-system
  :config
  (add-to-list 'exec-path-from-shell-variables "HISTFILE")
  (add-to-list 'exec-path-from-shell-variables "HISTSIZE")
  (add-to-list 'exec-path-from-shell-variables "EDITOR")
  (add-to-list 'exec-path-from-shell-variables "VISUAL")
  (add-to-list 'exec-path-from-shell-variables "LANG")
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
