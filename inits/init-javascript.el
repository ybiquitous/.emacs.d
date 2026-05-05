(use-package js
  ;; See https://github.com/joaotavora/eglot/discussions/1348
  :bind ([remap js-find-symbol] . xref-find-definitions)
  :custom
  (js-indent-level tab-width)
  (js-switch-indent-offset tab-width)
  :init
  ;; Node.js supports `.mjs' and `.cjs': https://nodejs.org/api/packages.html
  (add-to-list 'auto-mode-alist '("\\.[cm]js\\'" . js-mode)))

;; HACK: Prevent the error on CI: `Cannot open load file: No such file or directory, f'
;; See https://github.com/ybiquitous/.emacs.d/actions/runs/8982929204/job/24671576283#step:5:474
(use-package f)

(use-package add-node-modules-path
  :after (f)
  :custom
  (add-node-modules-path-debug t)
  ;; HACK: https://github.com/codesuki/add-node-modules-path/issues/23
  (add-node-modules-path-command "echo \"$(npm root)/.bin\"")
  :hook ((prog-mode markdown-mode yaml-ts-mode) . add-node-modules-path)
  :init
  (add-to-list 'warning-suppress-log-types '(add-node-modules-path)))

(provide 'init-javascript)
