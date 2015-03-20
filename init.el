;; WELCOME TO AWALEX EMACS CONFIG FILE ;;
(add-to-list 'load-path "/home/alex/.emacs.d/packages/")

(require 'cl)
(package-initialize)
(require 'dired+)
(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\..*$|"))

;; JS indentation
(setq js-indent-level 2)

;; Gotham theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'gotham t)
;;(load-theme 'cyberpunk t)

;; Column mode
(column-number-mode 1)

;; Font size
(set-face-attribute 'default nil :height 105)

(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)

;; disabling startup screen
(setq inhibit-startup-message t)

;; binding files to mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))
(add-to-list 'auto-mode-alist
             '("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . php-mode))

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

;; IDO configuration, enabling autocomplete MX and FINDFILE 
(require 'ido)
(ido-mode 1)
(add-hook 'find-file-hook 'ido-remember-buffer-file)
(defun ido-remember-buffer-file ()
  (interactive)
  (let ((file (expand-file-name (buffer-file-name))))
    (if file
        (let ((dir (file-name-directory file))
              (name (file-name-nondirectory file)))
          (ido-record-work-file name)
          (ido-record-work-directory dir)
          (ido-file-name-all-completions dir)))))
(ido-everywhere 1)
(defadvice completing-read
  (around use-ido-when-possible activate)
  (if (not (boundp 'ido-cur-list))
      (let ((completions (all-completions "" collection predicate)))
        (if completions
            (setq ad-return-value
                  (ido-completing-read prompt completions nil require-match
                                       initial-input hist def)))))
  (unless ad-return-value
    ad-do-it))
;; End of IDO conf

;; VisualBookmarks
(setq-default bm-buffer-persistence t)
(setq bm-restore-repository-on-load t)

;;; Smex
(autoload 'smex "smex")
(global-set-key (kbd "M-x") 'smex)

;; color-identifiers-mode
(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; key bindings
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<down>") 'windmove-down)

;; using dired instead of findfile
(global-set-key (kbd "C-x C-f") 'dired)



(defun aw_nbm ()
  (bookmark-set)
  (bookmark-save)
  (interactive)
  (message"Bookmark ajouté ¯\_(ツ)_/¯"))

(defun aw_new-file (x)
  "inline doc string"
  (interactive "sNom du fichier: ")
  (find-file x)
  (g)
  (message "Fichier créé")
  )

(defun aw_pdb ()
  (interactive)
  (print "import pdb; pdb.set_trace()")
  )

(defun orgsync ()
  (shell-command "orgsync" )
  (interactive)
  (message "Fichiers synchronisés")
  )


;; Org-mode customization
(setq org-hide-emphasis-markers t)

(setq-default org-src-fontify-natively t)

(setq org-todo-keywords 
      '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED" "WTF")))

(setq org-todo-keyword-faces
  '(("TODO" . org-warning)
   ("DOING" . "yellow")
   ("BLOCKED" . "red")
   ("REVIEW" . "orange")
   ("DONE" . "green")
   ("WTF" . "pink")
   ("ARCHIVED" .  "blue"))) 

;; Get backup file out of sight
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-enabled-themes (quote (gotham)))
 '(custom-safe-themes
   (quote
    ("dc758223066a28f3c6ef6c42c9136bf4c913ec6d3b710794252dc072a3b92b14" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "1d9492749ca290d1702b2f331b99a2692cda19fb1e4aae4b9e75515027afbf3b" default)))
 '(fci-rule-color "#383838")
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "migrations")))
 '(js-curly-indent-offset 2)
 '(org-hide-emphasis-markers t t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

