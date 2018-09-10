(use-package projectile
  :delight " PJ"
  :config
  (projectile-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-register-project-type
    'npm '("package.json")
    :compile "npm install"
    :test "npm test"
    :test-suffix ".test"))

(provide 'init-projectile)
