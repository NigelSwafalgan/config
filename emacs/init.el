(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode)
(add-hook 'after-init-hook 'global-company-mode)

(load-theme 'gruber-darker t)
(set-frame-font "Jetbrains Mono 18" nil t)

(setq custom-file "~/.config/emacs/custom.el")
(setq inhibit-startup-screen t)
(setq c-basic-offset 4)

(add-to-list 'backup-directory-alist (cons "." "~/.config/emacs/backups/"))

(global-set-key [f4] (lambda() (interactive) (find-file "~/config/emacs/init.el")))
(global-set-key [f5] (lambda() (interactive) (find-file "~/Documents")))
(global-set-key [f9] 'eglot)

(global-set-key (kbd "C-S-c") 'mc/edit-lines)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(rust-mode . ("rust-analyzer")))
  (add-to-list 'eglot-server-programs
               '(csharp-mode . ("omnisharp" "-lsp"))))
