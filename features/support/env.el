(require 'f)

(defvar ruby-end-features-path
  (f-parent (f-dirname (f-this-file))))

(defvar ruby-end-root-path
  (f-parent ruby-end-features-path))

(defvar ruby-end-vendor-path
  (f-expand "vendor" ruby-end-features-path))

(add-to-list 'load-path ruby-end-root-path)

(require 'ruby-end)
(require 'espuds)
(unless (require 'ert nil 'noerror)
  (require 'ert (f-expand "ert" ruby-end-vendor-path)))

(Before
 (setq ruby-end-insert-newline t)
 (setq ruby-end-expand-on-ret t)
 (setq ruby-end-expand-only-for-last-commands nil))
