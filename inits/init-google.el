(use-package google-this
  :config
  (google-this-mode t))

(use-package google-translate
  :bind (("C-c t" . google-translate-at-point)
         ("C-c T" . google-translate-at-point-reverse))
  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "ja"))

;; Workaround for search failed. See https://github.com/atykhonov/google-translate/issues/52#issuecomment-481310626
(with-eval-after-load "google-translate-tk"
  (defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130)))

(provide 'init-google)
