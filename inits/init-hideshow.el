;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow
  :hook (emacs-lisp-mode . hs-minor-mode)
  :custom
  (hs-display-lines-hidden t)
  (hs-show-indicators t))

(provide 'init-hideshow)
