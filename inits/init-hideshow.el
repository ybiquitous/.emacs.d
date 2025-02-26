;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow)

(use-package hideshowvis
  :vc (:url "https://github.com/sheijk/hideshowvis")
  :hook (emacs-lisp-mode . hideshowvis-minor-mode))

(provide 'init-hideshow)
