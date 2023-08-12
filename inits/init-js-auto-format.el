(use-package js-auto-format-mode
  :config
  (defun my/enable-jaf-on-js-mode ()
    (setq-local js-auto-format-command-args (concat js-auto-format-command-args " --no-ignore")))
  (add-hook 'js-mode-hook #'my/enable-jaf-on-js-mode)

  (defun my/enable-jaf-as-prettier ()
    (setq-local js-auto-format-command "prettier")
    (setq-local js-auto-format-command-args "--write"))
  (add-hook 'css-mode-hook #'my/enable-jaf-as-prettier)
  (add-hook 'yaml-mode-hook #'my/enable-jaf-as-prettier)

  (defun my/enable-jaf-on-ruby-mode ()
    (if (locate-dominating-file default-directory "Gemfile")
      (progn
        (setq-local js-auto-format-command "bundle")
        (setq-local js-auto-format-command-args "exec rubocop --auto-correct --format emacs"))
      (progn
        (setq-local js-auto-format-command "rubocop")
        (setq-local js-auto-format-command-args "--auto-correct --format emacs"))))
  (add-hook 'ruby-mode-hook #'my/enable-jaf-on-ruby-mode)
  (add-hook 'enh-ruby-mode-hook #'my/enable-jaf-on-ruby-mode))

(provide 'init-js-auto-format)
