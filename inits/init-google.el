(use-package google-this
  :config
  (google-this-mode t))

(use-package google-translate
  ;; HACK: Error "Failed to search TKK"
  ;;
  ;; See also:
  ;; - https://github.com/atykhonov/google-translate/issues/52#issuecomment-423870290
  ;; - https://github.com/atykhonov/google-translate/issues/52#issuecomment-424302439
  :config
  (when (and (string-match "0.11.14"
               (google-translate-version))
          (>= (time-to-seconds)
            (time-to-seconds
              (encode-time 0 0 0 23 9 2018))))
    (defun google-translate--get-b-d1 ()
      ;; TKK='427110.1469889687'
      (list 427110 1469889687)))

  ;; HACK: When using the above workaround, `:bind' does NOT work, so use `bind-keys*' instead.
  (bind-keys*
    ("C-c t" . google-translate-at-point)
    ("C-c T" . google-translate-at-point-reverse))
  ;; :bind (("C-c t" . google-translate-at-point)
  ;;        ("C-c T" . google-translate-at-point-reverse))

  :custom
  (google-translate-default-source-language "en")
  (google-translate-default-target-language "ja"))

(provide 'init-google)
