(use-package copilot
  :after (:all editorconfig s)
  :bind (:map copilot-completion-map
          ("<tab>" . 'copilot-accept-completion)
          ("TAB" . 'copilot-accept-completion)
          ("C-TAB" . 'copilot-accept-completion-by-word)
          ("C-<tab>" . 'copilot-accept-completion-by-word)))

(provide 'init-copilot)
