(require 'js)
(setq js-indent-level tab-width)
(setq js-switch-indent-offset tab-width)

;; Node.js supports `.mjs' and `.cjs': https://nodejs.org/api/packages.html
(add-to-list 'auto-mode-alist '("\\.[cm]js\\'" . js-mode))

;; Override 'js-find-symbol
(define-key js-mode-map (kbd "M-.") #'xref-find-definitions)

;; https://www.emacswiki.org/emacs/HideShow
(add-hook 'js-mode-hook #'hs-minor-mode)

(use-package add-node-modules-path
  :custom
  (add-node-modules-path-debug t)
  ;; HACK: https://github.com/codesuki/add-node-modules-path/issues/23
  (add-node-modules-path-command "echo \"$(npm root)/.bin\"")
  :init
  (add-to-list 'warning-suppress-log-types '(add-node-modules-path)))

(add-hook 'js-mode-hook #'add-node-modules-path)
(eval-after-load 'json-mode '(add-hook 'json-mode-hook #'add-node-modules-path))
(eval-after-load 'typescript-mode '(add-hook 'typescript-mode-hook #'add-node-modules-path))
(eval-after-load 'css-mode '(add-hook 'css-mode-hook #'add-node-modules-path))
(eval-after-load 'web-mode '(add-hook 'web-mode-hook #'add-node-modules-path))
(eval-after-load 'markdown-mode '(add-hook 'markdown-mode-hook #'add-node-modules-path))
(eval-after-load 'yaml-mode '(add-hook 'yaml-mode-hook #'add-node-modules-path))

(provide 'init-javascript)
