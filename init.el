;; WELCOME TO AWALEX EMACS CONFIG FILE ;;

;; My cyberpunk theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)
;; Columb mode
(column-number-mode 1)

;; Font size
(set-face-attribute 'default nil :height 105)

;; disabling startup screen
(setq inhibit-startup-message t)

;; binding files to mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))
(add-to-list 'auto-mode-alist
             '("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . html-mode))

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
(define-key global-map [(meta ?x)] 'ido-meta-x)
(defun ido-meta-x ()
  (interactive)
  (call-interactively
   (intern
    (or (completing-read "M-x " (all-completions "" obarray 'commandp))))))
;; End of IDO conf


;; color-identifiers-mode
(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; key bindings

(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<down>") 'windmove-down)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
