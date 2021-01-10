
;;; Code:

(use-package ample-theme)
(use-package anti-zenburn-theme)
(use-package blackboard-theme)
(use-package clues-theme)
(use-package espresso-theme)
(use-package faff-theme)
(use-package paper-theme)
(use-package soft-stone-theme)
(use-package solarized-theme)
(use-package subatomic-theme)
(use-package sublime-themes)
(use-package flatland-black-theme)
(use-package atom-dark-theme)

(use-package hide-mode-line)
(use-package helm-themes :after (helm))
(use-package centered-cursor-mode)
(use-package focus
  :config (add-to-list 'focus-mode-to-thing '(typescript-mode . paragraph)))

(use-package linum-relative
  :config
  (linum-mode -1)
  :custom
  (linum-format " %d  ")
  (linum-relative-backend 'display-line-numbers-mode)
  :hook (prog-mode . linum-relative-on))

(use-package olivetti
  :custom
  (olivetti-body-width 0.65)
  (olivetti-minimum-body-width 85))

(define-minor-mode j/focus-mode
  "Focus mode"
  :lighter "Focus"
  (if j/focus-mode
      (progn
        (olivetti-mode 1)
        (git-gutter-mode -1)
        (linum-relative-mode -1)
        (setq-local
         inhibit-message t
         truncate-lines t)

        (focus-mode 1)
        (set-window-fringes (selected-window) 0 0)
        (unless (derived-mode-p 'prog-mode)
          (progn
            (hide-mode-line-mode 1)
            (centered-cursor-mode 1))
          ))
      (centered-cursor-mode -1)
      (olivetti-mode -1)
      (setq inhibit-message nil)
      (git-gutter-mode 1)
      (focus-mode -1)
      (linum-relative-mode 1)
      (set-window-fringes (selected-window) nil) ; Use default
    ))

(define-minor-mode j/collapsed-mode
  "Focus mode"
  :lighter "Collapsed"
  (if j/collapsed-mode
      (progn (hs-minor-mode 1) (hs-hide-all))
    (hs-minor-mode -1)
    ))


(use-package modus-themes
  :config (load-theme 'modus-operandi t)
  :custom
  (modus-themes-intense-hl-line t))

(add-to-list 'default-frame-alist
             '(font . "Hack-12"))

;; Fix line truncation

(add-hook 'text-mode-hook '(lambda ()
    (setq truncate-lines nil
          word-wrap t)))

(add-hook 'prog-mode-hook '(lambda ()
    (setq truncate-lines t
          word-wrap nil)))

;; Delete trailing whitespace on save

(global-prettify-symbols-mode +1)
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

;; Custom quit function

(defun j/quit ()
  "An overloaded quit function.  Takes context into account."
  (interactive)
  (cond
   ((bound-and-true-p loccur-mode) (loccur-current))
   ((buffer-narrowed-p) (widen))
   ((org-buffer-narrowed-p) (widen))
   ((not (one-window-p)) (kill-buffer-and-window))
   (t (kill-current-buffer))))

(general-def 'normal
  "q" 'j/quit)

(general-def 'normal :prefix visual-key
  "f" '(j/focus-mode :which-key "Focus")
  "c" '(j/collapsed-mode :which-key "Collapse")
  "t" '(helm-themes :which-key "Theme"))

(provide 'ui)
;;; ui.el ends here
