(require 'js)
(setq js-indent-level tab-width)
(setq js-switch-indent-offset tab-width)

(use-package js2-mode
  :mode ("\\.js\\'" "\\.mjs\\'" "\\.es6\\'")
  :interpreter "node"
  :delight "JS2"
  :custom
  (js2-mode-show-parse-errors nil)
  (js2-mode-show-strict-warnings nil))

(use-package add-node-modules-path
  :hook (prog-mode text-mode)
  :custom
  (add-node-modules-path-debug t))

(use-package tern
  :hook (js-mode . tern-mode))

(use-package company-tern
  :config
  (push 'company-tern company-backends))

(use-package rjsx-mode
  :mode ("components\\/.*\\.jsx?\\'" "\\.jsx\\'"))

(provide 'init-javascript)
