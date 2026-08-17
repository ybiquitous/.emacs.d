;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow)

;; TODO: A similar feature is going to be implemented in Emacs 31. Drop `hideshowvis' after the upgrade.
(use-package hideshowvis
  :hook (emacs-lisp-mode . hideshowvis-minor-mode))

(provide 'init-hideshow)
