(require 'evil)
(evil-mode 1)

(require 'evil-numbers)

(require 'surround)
(global-surround-mode 1)

(add-hook 'ruby-mode-hook
          (lambda()
            (setq evil-shift-width ruby-indent-level)))

(add-hook 'coffee-mode-hook
          (lambda()
            (setq evil-shift-width coffee-indent-level)))
