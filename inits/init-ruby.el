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
          "Vagrantfile\\'")
  :custom
  (enh-ruby-add-encoding-comment-on-save nil)
  (enh-ruby-deep-indent-paren nil)
  (enh-ruby-bounce-deep-indent t))

(use-package ruby-electric
  :hook ((ruby-mode enh-ruby-mode) . ruby-electric-mode))

(provide 'init-ruby)
