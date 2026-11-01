;;; aurora-drift-theme.el --- Emacs port of Ghostty's "Aurora Drift"  -*- lexical-binding: t; -*-

;; A port of the "Aurora Drift" color scheme, taken from the Ghostty-format
;; theme published in iTerm2-Color-Schemes:
;; https://github.com/mbadolato/iTerm2-Color-Schemes/blob/db67f636eaeeabc74f0c90ff73e083d790882fe2/ghostty/Aurora%20Drift
;;
;; The scheme was created by Mark Badolato and is distributed under the MIT
;; license (Copyright (c) 2011 to Present Mark Badolato).
;;
;; The terminal palette only defines 16 ANSI colors plus background,
;; foreground, cursor, and selection. Everything else here (comments, UI
;; grays, diff, magit, dired, corfu) is derived from those colors.

(deftheme aurora-drift
  "Dark theme ported from Ghostty's \"Aurora Drift\"."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      ;; Terminal colors, named after the Ghostty theme entries.
      (bg "#050814")
      (fg "#e6f1ff")
      (bright-fg "#f7fbff")
      (selection "#263449")
      (black "#aab7c8")
      (red "#ff6b6b")
      (green "#5fd9ad")
      (yellow "#ffd166")
      (blue "#6ea8ff")
      (bright-blue "#91bdff")
      (magenta "#c58cff")
      (bright-magenta "#d9adff")
      (cyan "#54ddeb")
      (bright-cyan "#7be9f2")
      ;; Derived colors: there is no equivalent in the terminal palette.
      (ui-bg "#0b1220")
      (ui-bg-alt "#101a2c")
      (ui-border "#263449")
      (muted "#7b8aa0")
      (dim "#3d4a5c"))
  (custom-theme-set-faces
   'aurora-drift
   ;; Core
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background "#00e5ff" :foreground ,bg))))
   `(region ((,class (:background ,selection :foreground ,bright-fg))))
   `(secondary-selection ((,class (:background "#1a2436"))))
   `(highlight ((,class (:background ,ui-border))))
   `(hl-line ((,class (:background ,ui-bg-alt))))
   `(shadow ((,class (:foreground ,muted))))
   `(link ((,class (:foreground ,bright-blue :underline t))))
   `(link-visited ((,class (:foreground ,bright-magenta :underline t))))
   `(escape-glyph ((,class (:foreground ,magenta))))
   `(minibuffer-prompt ((,class (:foreground ,cyan :weight bold))))
   `(trailing-whitespace ((,class (:background ,red))))

   ;; Frames and windows
   `(fringe ((,class (:background ,bg))))
   `(vertical-border ((,class (:foreground ,ui-border))))
   `(window-divider ((,class (:foreground ,ui-border))))
   `(window-divider-first-pixel ((,class (:foreground ,ui-border))))
   `(window-divider-last-pixel ((,class (:foreground ,ui-border))))

   ;; Mode line, header line, tab bar
   `(mode-line ((,class (:background ,ui-bg :foreground ,black
                                     :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-inactive ((,class (:background ,bg :foreground "#5d6b80"
                                              :box (:line-width 1 :color "#1a2436")))))
   `(mode-line-buffer-id ((,class (:foreground ,fg :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,cyan))))
   `(header-line ((,class (:background ,ui-bg :foreground ,black))))
   `(tab-bar ((,class (:background ,ui-bg :foreground ,black))))
   `(tab-bar-tab ((,class (:background ,ui-border :foreground ,fg))))
   `(tab-bar-tab-inactive ((,class (:background ,ui-bg :foreground ,muted))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,dim :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,ui-bg-alt))))

   ;; Search and parens
   `(isearch ((,class (:background ,yellow :foreground ,bg))))
   `(isearch-fail ((,class (:background ,red :foreground ,bg))))
   `(lazy-highlight ((,class (:background ,selection :foreground ,yellow))))
   `(match ((,class (:background ,magenta :foreground ,bg))))
   `(show-paren-match ((,class (:background ,selection :foreground ,cyan :weight bold))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,bg))))

   ;; Status
   `(error ((,class (:foreground ,red :weight bold))))
   `(warning ((,class (:foreground ,yellow))))
   `(success ((,class (:foreground ,green))))

   ;; Whitespace
   `(whitespace-space ((,class (:foreground ,dim))))
   `(whitespace-tab ((,class (:foreground ,dim))))
   `(whitespace-trailing ((,class (:background ,red))))
   `(whitespace-line ((,class (:background ,ui-bg-alt :foreground ,yellow))))

   ;; Font lock
   `(font-lock-builtin-face ((,class (:foreground ,cyan))))
   `(font-lock-comment-face ((,class (:foreground ,muted :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((,class (:foreground ,yellow))))
   `(font-lock-doc-face ((,class (:foreground "#9fb0c4" :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,blue))))
   `(font-lock-keyword-face ((,class (:foreground ,magenta))))
   `(font-lock-preprocessor-face ((,class (:foreground ,magenta))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,green :weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,green :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,bright-cyan))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-warning-face ((,class (:foreground ,red :weight bold))))

   ;; Compilation
   `(compilation-error ((,class (:foreground ,red))))
   `(compilation-warning ((,class (:foreground ,yellow))))
   `(compilation-info ((,class (:foreground ,cyan))))
   `(compilation-line-number ((,class (:foreground ,muted))))
   `(compilation-column-number ((,class (:foreground ,muted))))

   ;; Diff
   `(diff-added ((,class (:foreground ,green))))
   `(diff-removed ((,class (:foreground ,red))))
   `(diff-changed ((,class (:foreground ,yellow))))
   `(diff-header ((,class (:background ,ui-bg :foreground ,black))))
   `(diff-file-header ((,class (:background ,ui-bg :foreground ,bright-fg))))
   `(diff-hunk-header ((,class (:background ,ui-bg-alt :foreground ,cyan))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,blue :weight bold))))
   `(dired-header ((,class (:foreground ,bright-magenta :weight bold))))
   `(dired-marked ((,class (:foreground ,yellow))))
   `(dired-flagged ((,class (:foreground ,red))))
   `(dired-symlink ((,class (:foreground ,cyan))))
   `(dired-ignored ((,class (:foreground ,dim))))))

(provide-theme 'aurora-drift)

;;; aurora-drift-theme.el ends here
