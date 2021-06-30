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
(setq-default line-spacing 0.3)

;; Mode
(blink-cursor-mode nil)
(column-number-mode t)
(electric-pair-mode t)
(global-font-lock-mode t)
(global-hl-line-mode t)
(global-linum-mode t)
(line-number-mode t)
(recentf-mode t)
(show-paren-mode t)
(transient-mark-mode t)

;; GUI
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode (quote right)))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Face
(set-face-background 'default "black")
(set-face-foreground 'default "white")

;; Prompt
(fset 'yes-or-no-p 'y-or-n-p)

;; Locale
(prefer-coding-system 'utf-8)

;; Frame title
(setq frame-title-format
  '((:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b"))
     " @ Emacs " emacs-version))

;; MELPA (https://github.com/melpa/melpa)
(require 'package)
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

  ;; https://github.com/jwiegley/use-package#diminishing-and-delighting-minor-modes
  (use-package delight)

  ;; Sub initializations
  (add-to-list 'load-path (expand-file-name "inits" user-emacs-directory))
  (require 'init-company)
  (require 'init-css)
  (require 'init-desktop)
  (require 'init-dired)
  (require 'init-docker)
  (require 'init-dotenv)
  (require 'init-editorconfig)
  (require 'init-exec-path)
  (require 'init-feature-mode)
  (require 'init-flycheck)
  (require 'init-flyspell)
  (require 'init-git)
  (require 'init-go)
  (require 'init-hcl)
  (require 'init-highlight-indent-guides)
  (require 'init-highlight-symbol)
  (require 'init-ido)
  (require 'init-javascript)
  (require 'init-js-auto-format)
  (require 'init-json)
  (require 'init-key-bindings)
  (require 'init-lsp)
  (require 'init-markdown)
  (require 'init-perl)
  (require 'init-prettier)
  (require 'init-projectile)
  (require 'init-ruby)
  (require 'init-shell)
  (require 'init-shellscript)
  (require 'init-slim)
  (require 'init-smart-apostrophe-mode)
  (require 'init-super-save)
  (require 'init-typescript)
  (require 'init-utils)
  (require 'init-web-mode)
  (require 'init-which-key)
  (require 'init-whitespace)
  (require 'init-xml)
  (require 'init-yaml))
  ;; Disable less used packages
  ;; (require 'init-java)

;; emacsclient
(require 'server)
(unless (server-running-p)
  (server-start))

;; macOS
(when (eq system-type 'darwin)
  (require 'init-mac)
  (require 'init-dash))

;; Windows
(when (eq system-type 'windows-nt)
  (require 'init-windows))

;; Environment-specific customization
(setq custom-file "~/.emacs-env.el")
(when (file-exists-p custom-file)
  (load custom-file))
