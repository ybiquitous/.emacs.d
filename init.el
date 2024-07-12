;; -*- lexical-binding: t -*-

(let ((minver "25.2"))
  (unless (version< minver emacs-version)
    (error "Your Emacs %s is too old, please use Emacs %s+" emacs-version minver)))

;; Basic
(setq auto-save-default nil)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq create-lockfiles nil)
(setq debug-on-error t)
(setq indent-tabs-mode nil)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq load-prefer-newer t)
(setq make-backup-files nil)
(setq ns-pop-up-frames nil)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq select-enable-clipboard t)
(setq show-trailing-whitespace t)
(setq standard-indent 2)
(setq vc-follow-symlinks nil)
(setq-default tab-width 4)
(setq-default line-spacing 0.2)

;; Mode
(blink-cursor-mode nil)
(column-number-mode t)
(display-time-mode t)
(electric-pair-mode t)
(global-display-line-numbers-mode t)
(global-font-lock-mode t)
(global-hl-line-mode t)
(line-number-mode t)
(recentf-mode t)
(show-paren-mode t)
(tab-bar-mode t)
(transient-mark-mode t)

;; GUI
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode (quote right)))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Face
(set-face-background 'default "gray8")
(set-face-foreground 'default "snow2")

;; Prompt
(fset 'yes-or-no-p 'y-or-n-p)

;; Locale
(prefer-coding-system 'utf-8)

;; Frame title
(setq frame-title-format
  '((:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b"))
     " @ Emacs " emacs-version))

;; Utilities
(defun my/download-github-package (repo-url &optional branch)
  "Download GitHub package from REPO-URL.
If the optional BRANCH arg is specified, download the branch instead of the default one."
  (let* ((package-name (car (last (split-string repo-url "/"))))
          (package-dir (expand-file-name (format "git-packages/%s" package-name) user-emacs-directory)))
    (message "Downloading '%s' to '%s' ..." repo-url package-dir)
    (if (file-directory-p package-dir)
      (shell-command (format "git -C '%s' pull" package-dir))
      (if branch
        (shell-command (format "git clone --depth=1 '%s' '%s' --branch='%s'" repo-url package-dir branch))
        (shell-command (format "git clone --depth=1 '%s' '%s'" repo-url package-dir))))))

;; MELPA (https://github.com/melpa/melpa)
(require 'package)
(setq package-install-upgrade-built-in t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; HACK: Prevent the error: "Failed to verify signature spinner-1.7.3.el.sig"
;;
;; https://metaredux.com/posts/2019/12/09/dealing-with-expired-elpa-gpg-keys.html
;; https://github.com/emacs-lsp/lsp-mode/issues/1095
(setq package-check-signature nil)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'bind-key)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t)

  ;; Ensure certain executables are available on your system.
  (use-package use-package-ensure-system-package)

  ;; https://github.com/jwiegley/use-package#diminishing-and-delighting-minor-modes
  (use-package delight)

  ;; Sub initializations
  (add-to-list 'load-path (expand-file-name "inits" user-emacs-directory))
  (require 'init-company)
  (require 'init-copilot)
  (require 'init-css)
  (require 'init-dash)
  (require 'init-desktop)
  (require 'init-dired)
  (require 'init-dotenv)
  (require 'init-editorconfig)
  (require 'init-eglot)
  (require 'init-exec-path)
  (require 'init-flymake)
  (require 'init-flyspell)
  (require 'init-formatter)
  (require 'init-git)
  (require 'init-hideshow)
  (require 'init-highlight-indent-guides)
  (require 'init-highlight-symbol)
  (require 'init-ido)
  (require 'init-imenu)
  (require 'init-javascript)
  ;; TODO: Remove
  ;; (require 'init-js-auto-format)
  (require 'init-key-bindings)
  (require 'init-ligature)
  (require 'init-lsp)
  (require 'init-markdown)
  (require 'init-perl)
  (require 'init-ruby)
  (require 'init-rust)
  (require 'init-server)
  (require 'init-shell)
  (require 'init-shellscript)
  (require 'init-smart-apostrophe-mode)
  (require 'init-speedbar)
  (require 'init-super-save)
  (require 'init-terraform)
  (require 'init-tree-sitter)
  (require 'init-typescript)
  (require 'init-utils)
  (require 'init-web-mode)
  (require 'init-which-key)
  (require 'init-whitespace)
  (require 'init-xml))

;; macOS
(when (eq system-type 'darwin)
  (require 'init-mac))

;; Windows
(when (eq system-type 'windows-nt)
  (require 'init-windows))

;; Environment-specific customization
(setq custom-file "~/.emacs-env.el")
(when (file-exists-p custom-file)
  (load custom-file))
