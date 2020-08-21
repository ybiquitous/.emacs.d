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
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq select-enable-clipboard t)
(setq show-trailing-whitespace t)
(setq standard-indent 2)
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
(set-face-font 'default "JetBrains Mono 18")

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

;; HACK: Emacs 27.1 fails to initialize.
;; ---
;; Failed to verify signature spinner-1.7.3.el.sig:
;; No public key for 066DAFCB81E42C40 created at 2019-09-22T02:54:00+0900 using RSA
;; Command output:
;; gpg: keyblock resource '~/.emacs.d/elpa/gnupg/pubring.kbx': No such file or directory
;; gpg: Signature made Sun Sep 22 02:54:00 2019 JST
;; gpg:                using RSA key C433554766D3DDC64221BFAA066DAFCB81E42C40
;; gpg: Can't check signature: No public key
;; ---
(setq package-check-signature nil)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
  (require 'init-go)
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
