(defun my/add-bundler-exec-path ()
  "Add the path to gems installed by Bundler to the `exec-path`."
  (interactive)
  (let* ((command "ruby -r bundler -e 'begin print Bundler.bundle_path.join(%{bin}) ; rescue Bundler::BundlerError ; end'")
          (bundler-gems-bin-path (shell-command-to-string command)))
    (unless (string-empty-p bundler-gems-bin-path)
      (message "Added to `exec-path`: %s" bundler-gems-bin-path)
	    (setq-local exec-path (cons bundler-gems-bin-path exec-path)))))
(add-hook 'ruby-base-mode-hook #'my/add-bundler-exec-path)

(use-package ruby-mode
  :custom
  (ruby-insert-encoding-magic-comment nil))

(use-package ruby-electric
  :hook (ruby-base-mode . ruby-electric-mode))

(use-package rbs-mode
  :vc (:url "https://github.com/ybiquitous/rbs-mode"))

(provide 'init-ruby)
