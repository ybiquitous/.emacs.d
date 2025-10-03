;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow)

(use-package hideshowvis
  :hook (emacs-lisp-mode . hideshowvis-minor-mode))

(provide 'init-hideshow)
