;; https://www.emacswiki.org/emacs/HideShow
(use-package hideshow)

(my/download-github-package "https://github.com/sheijk/hideshowvis")
(use-package hideshowvis
  :load-path (lambda () "git-packages/hideshowvis"))

(provide 'init-hideshow)
