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
