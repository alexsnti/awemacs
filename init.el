;; WELCOME TO AWALEX EMACS CONFIG FILE ;;

;; General and misc stuff
(load "~/.emacs.d/conf/general.el")

;; Theme, font, indent...
(load "~/.emacs.d/conf/style_conf.el")

;; File binding to modes
(load "~/.emacs.d/conf/files.el")

;; Dired configuration
(load "~/.emacs.d/conf/dired_conf.el")

;; Key bindings
(load "~/.emacs.d/conf/key_bindings.el")

;; IDO & Smex configuration
(load "~/.emacs.d/conf/ido_conf.el")

;; Orgmode
(load "~/.emacs.d/conf/orgmode.el")

;; Every custom functions
(load "~/.emacs.d/conf/custom_functions.el")

;; Utils
(load "~/.emacs.d/conf/utils.el")



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
    ("2b1683b98142c3f5ba64d177aff8ef6f12a3612d4f1bf9150e89cbbd62bc2049" "74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" "42ccd5eadda3546a89026b94794df7f4addadf25417b96917cf9db2f892b25a4" "ec3ec6e1b8e770df96d34a5d1a0d00b88baafd5704f1b835648270eba7f8b6d3" "44c5c5862d7b66b010559bf1dfd1406baf6070fea92d4b52f587517b8529928d" "dc758223066a28f3c6ef6c42c9136bf4c913ec6d3b710794252dc072a3b92b14" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "1d9492749ca290d1702b2f331b99a2692cda19fb1e4aae4b9e75515027afbf3b" default)))
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

