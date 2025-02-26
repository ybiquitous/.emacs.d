(use-package server
  :config
  (unless (server-running-p) (server-start)))

(provide 'init-server)
