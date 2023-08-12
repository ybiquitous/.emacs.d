(use-package dash-at-point
  :if (eq system-type 'darwin)
  :ensure-system-package
  ("/Applications/Dash.app" . "brew install --cask dash")
  :bind ("C-c d" . dash-at-point))

(provide 'init-dash)
