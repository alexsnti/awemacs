
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

;; scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
(setq mouse-wheel-follow-mouse 't)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; Style at startup
(moe-light)
(powerline-moe-theme)
