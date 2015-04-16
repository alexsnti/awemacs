;; DIRED CONFIGURATION
(require 'dired+)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\..*$|"))
