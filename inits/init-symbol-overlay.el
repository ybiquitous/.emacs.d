;; -*- lexical-binding: t -*-
(use-package symbol-overlay
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-I" . symbol-overlay-remove-all))
  :custom
  (symbol-overlay-idle-time 1.0)
  :custom-face
  (symbol-overlay-default-face ((t (:background "#33372a")))))

(provide 'init-symbol-overlay)
