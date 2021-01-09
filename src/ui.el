
;;; Code:

(use-package ample-theme)
(use-package anti-zenburn-theme)
(use-package blackboard-theme)
(use-package clues-theme)
(use-package espresso-theme)
(use-package faff-theme)
(use-package github-theme)
(use-package monochrome-theme)
(use-package nord-theme)
(use-package paper-theme)
(use-package plan9-theme)
(use-package soft-stone-theme)
(use-package solarized-theme)
(use-package subatomic-theme)
(use-package sublime-themes)
(use-package tango-plus-theme)
(use-package zenburn-theme)
(use-package flatland-black-theme)
(use-package atom-dark-theme)

(use-package hide-mode-line)
(use-package helm-themes :after (helm))
(use-package centered-cursor-mode)

(use-package linum-relative
  :config
  (linum-mode -1)
  :custom
  (linum-format " %d  ")
  (linum-relative-backend 'display-line-numbers-mode)
  :hook (prog-mode . linum-relative-on)
  :general
  (nmap :prefix visual-key "l" 'linum-relative-mode))

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
        (hide-mode-line-mode 1)
        (linum-relative-mode -1)
        (setq-local inhibit-message t)
        (set-window-fringes (selected-window) 0 0)
        (unless (derived-mode-p 'prog-mode) (centered-cursor-mode 1)))
      (centered-cursor-mode -1)
      (olivetti-mode -1)
      (setq inhibit-message nil)
      (git-gutter-mode 1)
      (hide-mode-line-mode -1)
      (linum-relative-mode 1)
      (set-window-fringes (selected-window) nil) ; Use default
    ))

(load-theme 'solarized-gruvbox-dark t)
(add-to-list 'default-frame-alist
             '(font . "DejaVu Sans Mono-11"))

(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(general-def 'normal :prefix visual-key
  "f" '(j/focus-mode :which-key "Focus")
  "t" '(helm-themes :which-key "Theme"))


(provide 'ui)
;;; ui.el ends here
