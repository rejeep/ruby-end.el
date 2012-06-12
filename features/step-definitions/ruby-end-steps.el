(Given "^ruby-mode is active$"
       (lambda ()
         (ruby-mode)))

(Given "^ruby-end-mode is active$"
       (lambda ()
         (ruby-end-mode +1)))

(Then "^end should not be insterted$"
      (lambda ()
        (save-excursion
          (goto-char (point-min))
          (should-not
           (re-search-forward "end" nil t)))))

(When "^I go to the end of next line$"
      (lambda ()
        (When "I press \"%s\"" "C-n")
        (And  "I press \"%s\"" "C-e")))

(When "^I go back one character$"
      (lambda ()
        (When "I press \"%s\"" "C-b")))

(Given "^I set face to be string$"
       (lambda ()
         (add-text-properties (point-min) (point-max) '(face font-lock-string-face))))

(Given "^I set face to be comment$"
       (lambda ()
         (add-text-properties (point-min) (point-max) '(face font-lock-comment-face))))

(When "^I go to the beginning of the line$"
      (lambda ()
        (When "I press \"%s\"" "C-a")))

(Given "I enable checking of statement modifiers"
   (lambda ()
     (setq ruby-end-check-statement-modifiers t)))

(Given "^insert newline is turned off$"
       (lambda ()
         (setq ruby-end-insert-newline nil)))

(Given "I disable expand on return"
       (lambda ()
         (setq ruby-end-expand-on-ret nil)))
