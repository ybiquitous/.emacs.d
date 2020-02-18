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
  (enh-ruby-bounce-deep-indent t)
  :config
  ;; https://www.emacswiki.org/emacs/HideShow
  (add-to-list 'hs-special-modes-alist
    '(ruby-mode (rx (or "def" "do" "{")) (rx (or "end" "}")) "#" ruby-forward-sexp nil))
  (add-hook 'enh-ruby-mode-hook #'hs-minor-mode))

(use-package ruby-electric
  :hook ((ruby-mode enh-ruby-mode) . ruby-electric-mode))

(provide 'init-ruby)
