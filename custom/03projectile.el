(require 'grizzl)
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)
(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-tags-command "/usr/local/bin/ctags -Re %s %s")

;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

