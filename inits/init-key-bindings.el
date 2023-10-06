(defun my/cheatsheet ()
  "Display personal cheatsheet for key bindings."
  (interactive)
  (with-output-to-temp-buffer "*Cheatsheet*"
    (princ "-*- Cheatsheet -*-

Key        Function
-------    -------------------------------------------
C-c k b    `describe-personal-keybindings'
C-? b      `describe-bindings'
C-? f      `describe-function'
C-? k      `describe-key'
C-q        `quoted-insert' (e.g. `C-q TAB')
C-x 8      `insert-char' (e.g. emoji `😇')
C-x C-+    `text-scale-adjust' (↑)
C-x C--    `text-scale-adjust' (↓)
C-x C-0    `text-scale-adjust' (reset)
C-x SPC    `rectangle-mark-mode'
C-c C-g    `vc-git-grep'
C-x v =    `vc-diff'
C-x v g    `vc-annotate' (git blame)
C-x v l    `vc-print-log'
C-x v u    `vc-revert'
M-!        `shell-command'
M-&        `async-shell-command'
C-u M-!    `shell-command' (insert to buffer)
C-u M-|    `shell-command-on-region' (insert to buffer)
C-M-s      `isearch-forward-regexp'
M-s w      `isearch-forward-word'
")))

(require 'bind-key)
(bind-keys*
  ("C-?"     . help-command)
  ("C-h"     . delete-backward-char)
  ("C-x C-q" . view-mode)
  ("C-c C-g" . vc-git-grep)
  ("C-c C-k" . kill-buffer-and-window)
  ("C-c C-r" . revert-buffer-quick)
  ("C-c C-v" . browse-url-of-buffer)
  ("C-c M-r" . restart-emacs)
  ("C-c v"   . browse-url-at-point)
  ("C-c l"   . toggle-truncate-lines)
  ("C-c a r" . align-regexp)
  ("C-c k b" . describe-personal-keybindings))

(provide 'init-key-bindings)
