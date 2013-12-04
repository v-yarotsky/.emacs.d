;; Customize PATH
(setq exec-path (append exec-path '("~/.rbenv/shims")))
(setq exec-path (append exec-path '("~/bin")))

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Hide toolbar forever
(tool-bar-mode -1)

;; Color scheme
(require 'sublime-themes)
;;(load-theme 'noctilux t)

;; Backup files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-startup-message t)

;; Show *current* dir in dired
(require 'dired-x)

;;Minibuffer customizations

;;VIM-style word deletion for minibuffer
(define-key minibuffer-local-map (kbd "C-w") 'backward-kill-word)
