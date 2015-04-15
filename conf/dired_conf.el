;; DIRED CONFIGURATION
(require 'dired+)
(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\..*$|"))
(require 'diredful)
