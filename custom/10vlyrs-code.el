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
          (lambda()
            (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

;;Clean up whitespace on save
(add-hook 'vlyrs-code-modes-hook
          (lambda () (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;;Enable auto indent
(add-hook 'vlyrs-code-modes-hook
          (lambda ()
            (electric-indent-mode 1)
            (electric-pairs-mode 1)))

(add-hook 'vlyrs-code-modes-hook
          (lambda ()
            (require 'highlight-indentation)
            (highlight-indentation-current-column-mode)))


;;Add lint checker
(add-hook 'vlyrs-code-modes-hook
	  (lambda()
	    (flycheck-mode t)))
