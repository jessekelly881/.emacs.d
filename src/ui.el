
;;; Code:

(load-theme 'ample-flat t)
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(use-package hide-mode-line)
(use-package olivetti
  :custom
  (olivetti-body-width 0.50)
  (olivetti-minimum-body-width 80))

(define-minor-mode j/focus-mode
  "Focus mode"
  :lighter "Focus"
  (if j/focus-mode
      (progn
        (olivetti-mode 1)
        (git-gutter-mode -1)
        (hide-mode-line-mode 1)
        (linum-relative-mode -1)
        (setq-local inhibit-message t)
        (set-window-fringes (selected-window) 0 0))
      (olivetti-mode -1)
      (setq inhibit-message nil)
      (git-gutter-mode 1)
      (hide-mode-line-mode -1)
      (linum-relative-mode 1)
      (set-window-fringes (selected-window) nil) ; Use default
    ))

(general-def 'normal :prefix visual-key
  "f" 'j/focus-mode)


(provide 'ui)
;;; ui.el ends here
