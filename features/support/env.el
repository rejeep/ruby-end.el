(let* ((current-directory (file-name-directory load-file-name))
       (features-directory (expand-file-name ".." current-directory))
       (project-directory (expand-file-name ".." features-directory)))
  (setq ruby-end-root-path project-directory)
  (setq ruby-end-util-path (expand-file-name "util" project-directory)))

(add-to-list 'load-path ruby-end-root-path)
(add-to-list 'load-path (expand-file-name "espuds" ruby-end-util-path))
(add-to-list 'load-path (expand-file-name "emacs-lisp" (expand-file-name "lisp" (expand-file-name "ert" ruby-end-util-path))))

(Before
 (setq ruby-end-insert-newline t)
 (setq ruby-end-expand-on-ret t))

(require 'ruby-end)
(require 'espuds)
(require 'ert)
