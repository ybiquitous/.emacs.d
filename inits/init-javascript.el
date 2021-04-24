(require 'js)
(setq js-indent-level tab-width)
(setq js-switch-indent-offset tab-width)

;; Node.js supports `.mjs' and `.cjs': https://nodejs.org/api/packages.html
(add-to-list 'auto-mode-alist '("\\.[cm]js\\'" . js-mode))

;; Override 'js-find-symbol
(define-key js-mode-map (kbd "M-.") #'xref-find-definitions)

;; JSON support
(define-derived-mode my-json-mode js-mode "JSON"
  "A custom mode for JSON files.")
(add-to-list 'auto-mode-alist '("\\.json\\'" . my-json-mode))

(use-package add-node-modules-path
  :hook (prog-mode text-mode)
  :custom
  (add-node-modules-path-debug t))

(provide 'init-javascript)
