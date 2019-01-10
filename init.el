;; -*- lexical-binding: t -*-

(let ((minver "25.2"))
  (unless (version< minver emacs-version)
    (error "Your Emacs %s is too old, please use Emacs %s+" emacs-version minver)))

;; Basic
(setq auto-save-default nil)
(setq create-lockfiles nil)
(setq debug-on-error t)
(setq indent-tabs-mode nil)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq load-prefer-newer t)
(setq make-backup-files nil)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq select-enable-clipboard t)
(setq show-trailing-whitespace t)
(setq standard-indent 2)
(setq tab-width 2)
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
(set-face-font 'default "Hack 16")

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
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                 (not (gnutls-available-p))))
        (protocol (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat protocol "://melpa.org/packages/")) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t)

  ;; https://github.com/jwiegley/use-package#diminishing-and-delighting-minor-modes
  (use-package delight)

  ;; Sub initializations
  (add-to-list 'load-path (expand-file-name "inits" user-emacs-directory))
  (require 'init-utils)
  (require 'init-desktop)
  (require 'init-key-bindings)
  (require 'init-highlight-symbol)
  (require 'init-exec-path)
  (require 'init-dired)
  (require 'init-whitespace)
  (require 'init-ido)
  (require 'init-yasnippet)
  (require 'init-company)
  (require 'init-editorconfig)
  (require 'init-git)
  (require 'init-flyspell)
  (require 'init-flycheck)
  (require 'init-js-auto-format)
  (require 'init-prettier)
  (require 'init-web-mode)
  (require 'init-javascript)
  (require 'init-typescript)
  (require 'init-css)
  (require 'init-markdown)
  (require 'init-yaml)
  (require 'init-ruby)
  (require 'init-slim)
  (require 'init-docker)
  (require 'init-perl)
  (require 'init-shell)
  (require 'init-shellscript)
  (require 'init-xml)
  (require 'init-hcl)
  (require 'init-dotenv)
  (require 'init-projectile)
  (require 'init-neotree)
  (require 'init-emmet)
  (require 'init-which-key)
  (require 'init-google)
  (require 'init-emojify)
  (require 'init-highlight-indent-guides)
  (require 'init-feature-mode)
  (require 'init-read-only)
  (require 'init-super-save)
  (require 'init-lsp))
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

;; http://extra-vision.blogspot.com/2016/10/emacs25-package-selected-packages.html
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Environment-specific customization
(let ((env-file "~/.emacs-env.el"))
  (when (file-exists-p env-file)
    (load env-file)))
