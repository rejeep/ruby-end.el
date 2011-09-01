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
        (call-interactively 'next-line)
        (call-interactively 'move-end-of-line)))

(When "^I go back one character$"
      (lambda ()
        (backward-char 1)))

(Given "^I set face to be comment$"
       (lambda ()
         (add-text-properties (point-min) (point-max) '(face font-lock-string-face))))

(Given "^I set face to be string$"
       (lambda ()
         (add-text-properties (point-min) (point-max) '(face font-lock-comment-face))))

(When "^I go to the beginning of the line$"
      (lambda ()
        (call-interactively 'beginning-of-line)))

(Given "I enable checking of statement modifiers"
   (lambda ()
     (setq  ruby-end-check-statement-modifiers t)))
