;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow
  :bind ("C-c C-:" . hs-toggle-hiding)
  :hook (prog-mode . hs-minor-mode)
  :config
  (add-to-list 'hs-special-modes-alist
    '(ruby-mode
       "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
       "end"
       "#"
       ruby-move-to-block
       nil))
  (add-to-list 'hs-special-modes-alist
    '(ruby-ts-mode
       "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
       "end"
       "#"
       ruby-move-to-block
       nil)))

(provide 'init-hideshow)
