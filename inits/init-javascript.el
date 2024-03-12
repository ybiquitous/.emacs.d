(use-package js
  :custom
  (js-indent-level tab-width)
  (js-switch-indent-offset tab-width)
  :init
  ;; Node.js supports `.mjs' and `.cjs': https://nodejs.org/api/packages.html
  (add-to-list 'auto-mode-alist '("\\.[cm]js\\'" . js-mode)))

;; HACK: `js-find-symbol' does not work with `lsp-mode', so this workaround resets the keymap.
;; See https://github.com/emacs-lsp/lsp-mode/issues/2770#issuecomment-816450453
(with-eval-after-load 'js
  (define-key js-mode-map (kbd "M-.") nil)
  (define-key js-ts-mode-map (kbd "M-.") nil))

(use-package add-node-modules-path
  :custom
  (add-node-modules-path-debug t)
  ;; HACK: https://github.com/codesuki/add-node-modules-path/issues/23
  (add-node-modules-path-command "echo \"$(npm root)/.bin\"")
  :hook ((prog-mode markdown-mode yaml-ts-mode) . add-node-modules-path)
  :init
  (add-to-list 'warning-suppress-log-types '(add-node-modules-path)))

(provide 'init-javascript)
