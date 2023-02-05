;;  -*- lexical-binding: t; -*-

;; FIXME: Rename "path" to "filename" to follow GNU convention.
(defvar ruby-end-features-path
  (expand-file-name "../" (file-name-directory
                           (if (fboundp 'macroexp-file-name)
                               (macroexp-file-name)
                             load-file-name))))

(defvar ruby-end-root-path
  (expand-file-name "../" ruby-end-features-path))

;; FIXME: Don't make such changes when we're merely loading an ELisp file.
(add-to-list 'load-path ruby-end-root-path)

(require 'ruby-end)
(require 'espuds)
(require 'ert)

(Before
 (setq ruby-end-insert-newline t)
 (setq ruby-end-expand-on-ret t)
 (setq ruby-end-expand-only-for-last-commands nil))
