;; https://github.com/oantolin/orderless
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  ;; TODO: Drop `basic' from `completion-category-overrides' and add `(completion-pcm-leading-wildcard t)' after upgrading to Emacs 31.
  (completion-category-overrides '((file (styles basic partial-completion))
                                    (eglot-capf (styles orderless)))))

(provide 'init-orderless)
