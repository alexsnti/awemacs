;; GENERAL SETTINGS
(add-to-list 'load-path "/home/alex/.emacs.d/packages/")

(setq frame-title-format "%b")

;; disabling startup screen
(setq inhibit-startup-message t)

(package-initialize)

(require 'cl)

;; Column mode
(column-number-mode 1)


(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)

;; disabling toolbar
(tool-bar-mode -1)

;; Marmalade package 
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(setq-default indent-tabs-mode nil)

;; Jedi configuration
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)  

;; VisualBookmarks
(setq-default bm-buffer-persistence t)
(setq bm-restore-repository-on-load t)

;; color-identifiers-mode
(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; Get backup file out of sight
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))


(setq rcirc-server-alist
      '(("dev.websiteburo.com" :port 6697 :encryption tls
	 :channels ("#wsb #IEI"))))
