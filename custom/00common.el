;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Hide toolbar forever
(tool-bar-mode -1)

;; Color scheme
(require 'sublime-themes)
(load-theme 'noctilux t)

