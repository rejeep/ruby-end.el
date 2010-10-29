;;; ruby-end.el --- Automatic insertion of end for blocks

;; Copyright (C) 2010 Johan Andersson

;; Author: Johan Andersson <johan.rejeep@gmail.com>
;; Maintainer: Johan Andersson <johan.rejeep@gmail.com>
;; Version: 0.0.1
;; Keywords: speed, convenience
;; URL: http://github.com/rejeep/ruby-end

;; This file is NOT part of GNU Emacs.


;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.


;;; Commentary:

;;; Code:

(defvar ruby-end-mode-map (make-sparse-keymap)
  "Keymap for `ruby-end-mode'.")


;;;###autoload
(define-minor-mode ruby-end-mode
  "Automatic insertion of end for blocks"
  :init-value nil
  :lighter " end"
  :keymap ruby-end-mode-map
  (when ruby-end-mode

    ))

(provide 'ruby-end)

;;; ruby-end.el ends here
