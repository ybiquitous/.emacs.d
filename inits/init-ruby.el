(require 'ruby-mode)
(setq ruby-insert-encoding-magic-comment nil)

(use-package enh-ruby-mode
  :interpreter "ruby"
  :mode ("\\.rb\\'"
          "\\.gemspec\\'"
          "\\.jb\\'"
          "\\.jbuilder\\'"
          "\\.rake\\'"
          "\\.ru\\'"
          "Capfile\\'"
          "Gemfile\\'"
          "Guardfile\\'"
          "Rakefile\\'"
          "Steepfile\\'"
          "Vagrantfile\\'")
  :custom
  (enh-ruby-add-encoding-comment-on-save nil)
  (enh-ruby-deep-indent-paren nil)
  (enh-ruby-bounce-deep-indent t))

(use-package ruby-electric
  :hook ((ruby-mode enh-ruby-mode) . ruby-electric-mode))

;; https://www.emacswiki.org/emacs/HideShow
(add-to-list 'hs-special-modes-alist
  '(ruby-mode
     "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
     "end"
     "#"
     ruby-move-to-block
     nil))
(add-to-list 'hs-special-modes-alist
  '(enh-ruby-mode
     "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
     "end"
     "#"
     ruby-move-to-block
     nil))
(add-hook 'ruby-mode-hook #'hs-minor-mode)
(add-hook 'enh-ruby-mode-hook #'hs-minor-mode)

(provide 'init-ruby)
