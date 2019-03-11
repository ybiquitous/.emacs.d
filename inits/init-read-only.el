(defun my/force-read-only-files ()
  (let* ((candidates '("/elpa/" "/node_modules/" "/vendor/bundle/" "package-lock.json" "yarn.lock" "Gemfile.lock"))
         (file-pattern (mapconcat 'regexp-quote candidates "\\|")))
    (when (string-match-p file-pattern buffer-file-name)
      (view-mode))))

(add-hook 'find-file-hook #'my/force-read-only-files)

(provide 'init-read-only)
