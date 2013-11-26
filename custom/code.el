(setq vlyrs-code-modes-hook nil)

;;Line numbers
(add-hook 'vlyrs-code-modes-hook
          (lambda () (linum-mode 1)))

;;Hybrid line numbers
(add-hook 'vlyrs-code-modes-hook
          (lambda ()
            (linum-relative-toggle)
            (linum-relative-toggle)))

;;Truncate lines
(add-hook 'vlyrs-code-modes-hook
          (lambda () (setq truncate-lines t)))

;;Clean up whitespace on save
(add-hook 'vlyrs-code-modes-hook
          (lambda () (add-hook 'before-save-hook 'whitespace-cleanup nil t)))
