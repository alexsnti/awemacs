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


(defun aw_pdb ()
  "Insert pdb import and trace at cursor point."
  (interactive)
  (insert "import pdb; pdb.set_trace()")
  (backward-char 4))

(defun aw_pyencoding ()
  "Insert encoding routine for python file"
  (interactive)
  (insert "# -*- coding:utf-8 -*-")
  (newline)
  (insert "import logging; logger = logging.getLogger(__name__)")
  (backward-char 4)
  )

(defun moe-light ()
  "Load moe-light theme."
  (interactive)
  (load-theme 'moe-light t)
  )

(defun moe-dark ()
  "Load moe-dark theme."
  (interactive)
  (load-theme 'moe-dark t)
  )
