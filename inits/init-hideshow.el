;; -*- lexical-binding: t -*-
(use-package hideshow
  :custom
  (hs-display-lines-hidden t)
  (hs-show-indicators t)
  :init
  ;; Hideshow has no globalized mode, so define one. Tree-sitter modes fold via
  ;; the `list' thing, and the others fall back to `hs-block-start-regexp'.
  (defun my/hs-minor-mode-maybe ()
    (when (or (derived-mode-p 'prog-mode) (treesit-parser-list))
      (hs-minor-mode)))
  (define-globalized-minor-mode my/global-hs-minor-mode
    hs-minor-mode my/hs-minor-mode-maybe)
  :config
  (my/global-hs-minor-mode))

(provide 'init-hideshow)
