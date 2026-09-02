;; -*- lexical-binding: t -*-
(use-package symbol-overlay
  :bind (("M-i" . symbol-overlay-put)
         ("M-I" . symbol-overlay-remove-all)))

(provide 'init-symbol-overlay)
