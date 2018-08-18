(defun my/describe-favorite-key-bindings ()
  "Display favorite key bindings."
  (interactive)
  (with-output-to-temp-buffer "*Favorite Key Bindings*"
    (princ "-*- Favorite Key Bindings -*-

Key        Function
-------    -------------------------------------------
C-? b      describe-bindings
C-? f      describe-function
C-? k      describe-key
C-q        quoted-insert (e.g. `C-q TAB')
C-x C-+    text-scale-adjust (increase)
C-x C--    text-scale-adjust (decrease)
C-x C-0    text-scale-adjust (reset)
C-x SPC    rectangle-mark-mode
C-c C-g    vc-git-grep
C-x v =    vc-diff (git diff)
C-x v g    vc-annotate (git blame)
C-x v l    vc-print-log (git log)
M-!        shell-command
M-&        async-shell-command
C-u M-!    shell-command (insert to buffer)
C-u M-|    shell-command-on-region (insert to buffer)
C-M-s      isearch-forward-regexp
M-s w      isearch-forward-word")))

;; use-package installs bind-key automatically
(require 'bind-key)
(bind-keys*
  ("C-?"     . help-command)
  ("C-h"     . delete-backward-char)
  ("C-c C-g" . vc-git-grep)
  ("C-c C-k" . kill-buffer-and-window)
  ("C-c C-r" . eval-buffer)
  ("C-c C-v" . browse-url-of-buffer)
  ("C-c v"   . browse-url-at-point)
  ("C-c l"   . toggle-truncate-lines)
  ("C-c a r" . align-regexp)
  ("C-c k b" . describe-personal-keybindings)
  ("C-c f k" . my/describe-favorite-key-bindings))

(provide 'init-key-bindings)
