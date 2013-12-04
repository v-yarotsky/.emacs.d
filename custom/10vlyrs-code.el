(setq vlyrs-code-modes-hook nil)

(add-hook 'vlyrs-code-modes-hook
          (lambda ()
            ;; Line Numbers
            (linum-mode t)

            ;; Whitespace cleanup
            (setq whitespace-style '(trailing empty))
            (setq whitespace-cleanup-mode-only-if-initially-clean nil)
            (whitespace-cleanup-mode t)

            ;; Auto-indentation and auto-parens
            (electric-indent-mode t)
            (electric-pair-mode t)

            ;; Indent level highlight
            (highlight-indentation-current-column-mode)

            ;; Auto-lint
            (flycheck-mode t)
            ))

