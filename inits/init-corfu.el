;; -*- lexical-binding: t -*-
;; https://github.com/minad/corfu
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.15) ;; default: 0.2
  (corfu-auto-prefix 2) ;; default: 3
  (corfu-cycle t)
  (corfu-preselect 'prompt)
  ;; corfu-popupinfo-mode
  (corfu-popupinfo-delay '(0.5 . 0.3)) ;; default: (2.0 . 0.5)
  :init
  (global-corfu-mode)
  :config
  (corfu-history-mode)
  (corfu-popupinfo-mode))

(provide 'init-corfu)
