;; -*- lexical-binding: t -*-
(use-package indent-bars
  :hook ((prog-mode yaml-ts-mode) . indent-bars-mode)
  :custom
  (indent-bars-treesit-support t))

(provide 'init-indent-bars)
