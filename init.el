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
(blink-cursor-mode -1)
(column-number-mode)
(display-time-mode)
(electric-pair-mode)
(global-font-lock-mode)
(global-hl-line-mode)
(line-number-mode)
(recentf-mode)
(show-paren-mode)
(tab-bar-mode)
(tool-bar-mode -1)
(transient-mark-mode)

(add-hook 'conf-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)

;; Skip non-GUI environments like CI.
(when (fboundp 'set-scroll-bar-mode) (set-scroll-bar-mode 'right))

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

;; MELPA (https://github.com/melpa/melpa)
(require 'package)
(setq package-install-upgrade-built-in t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'bind-key)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t)
  (setq use-package-vc-prefer-newest t)

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
  (require 'init-markdown)
  (require 'init-perl)
  (require 'init-project)
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
