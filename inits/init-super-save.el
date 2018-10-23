(use-package super-save
  :delight super-save-mode
  :custom
  (super-save-auto-save-when-idle t)
  (super-save-idle-duration 2)
  :config
  (super-save-mode +1))

(provide 'init-super-save)
