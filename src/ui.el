
;;; Code:

;; F-keys (Major control keys)
(bind-key* "<f7>" #'j/update-packages)             ;; F7 - Update packages

;; Themes:
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

(use-package helm-themes :after (helm))

;; Modeline:
(use-package hide-mode-line)
(use-package minions
  :config (minions-mode t))

(use-package powerline
  :config
  (defpowerline powerline-major-mode "")
  (defpowerline powerline-minor-modes minions-mode-line-modes)
  (powerline-center-evil-theme))

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

(use-package dumb-jump
  :general (nmap "g d" 'dumb-jump-go-other-window))

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

(use-package expand-region
  :general (vmap "v" 'er/expand-region))

(use-package undo-tree
  :config
  (global-undo-tree-mode t)
  (general-def 'normal
    "U" 'undo-tree-visualize
    "u" 'undo-tree-undo
    "C-r" 'undo-tree-redo))

(use-package dired-subtree
  :after dired
  :config
  (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
  (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

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

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package highlight-thing ;; Highlight all instances of a 'thing'
  :config (global-highlight-thing-mode)
  :hook (prog-mode . highlight-thing-mode))

(general-def 'normal :prefix visual-key
  "f" '(j/focus-mode :which-key "Focus")
  "c" '(j/collapsed-mode :which-key "Collapse")
  "t" '(helm-themes :which-key "Theme"))

(general-def 'normal "q" 'j/quit)
(general-def 'visual "TAB" 'indent-region)
(general-def 'normal :prefix leader-key
  "c" '(j/open-config :which-key "Config"))

(use-package hl-todo
  :config (global-hl-todo-mode))

(provide 'ui)
;;; ui.el ends here
