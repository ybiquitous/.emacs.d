;; -*- lexical-binding: t -*-
;; https://github.com/oantolin/orderless
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))
                                   (eglot-capf (styles orderless))))
  (completion-pcm-leading-wildcard t))

(provide 'init-orderless)
