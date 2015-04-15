
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/moe-theme.el/")
(add-to-list 'load-path "~/.emacs.d/themes/moe-theme.el/")

;; Font & font size
(set-face-attribute 'default nil :height 120)
(set-face-attribute 'default nil :font  "Inconsolata" )
(set-frame-font   "Inconsolata" nil t)

;; JS indentation
(setq js-indent-level 2)

;; Moe Theme configration
(require 'moe-theme)

;; Style at startup
(moe-light)
(powerline-moe-theme)
