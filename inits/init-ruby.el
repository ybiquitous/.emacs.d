(require 'ruby-mode)
(setq ruby-insert-encoding-magic-comment nil)

(require 'company)

(use-package robe
  :config
  (eval-after-load 'company
    '(push 'company-robe company-backends)))

(use-package ruby-electric)

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

(defun my/ruby-mode-hook ()
  (robe-mode t)
  (ruby-electric-mode t))
(add-hook 'ruby-mode-hook #'my/ruby-mode-hook)
(add-hook 'enh-ruby-mode-hook #'my/ruby-mode-hook)

(provide 'init-ruby)
