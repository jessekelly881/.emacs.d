;;; common --- Common packages
;;; Commentary:

;;; Code:

(use-package general)
(use-package crux)

(use-package company
  :hook (after-init . global-company-mode)
  :config (push 'company-files company-backends)
  :custom (company-idle-delay 0.5))

(use-package which-key
  :custom (setq which-key-idle-delay 0.4)
  :config
  (which-key-mode)

  ;; Add descriptions to root keys
  (which-key-add-key-based-replacements visual-key "UI")         ; UI
  (which-key-add-key-based-replacements insert-key "Insert")     ; Insert
  (which-key-add-key-based-replacements git-key "Git")           ; Git
  (which-key-add-key-based-replacements export-key "Export")     ; Export
  )

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (general-evil-setup t)
  (evil-mode 1)
  (general-def 'normal ; Very general keybindings
    "<escape>" 'save-buffer
    "<backtab>" 'evil-jump-forward
    "TAB" 'evil-jump-backward
    ))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-surround
  :general
  (nmap "S" 'evil-surround-edit)
  (vmap "S" 'evil-surround-region)
  :config
  (global-evil-surround-mode 1))

;; Helm
(use-package helm
  :config (setq helm-follow-mode-persistent t)
  :general
  ("C-h a"   'helm-apropos)
  ("M-x"     'helm-M-x)
  ("C-x C-f" 'helm-find-files)
  (nmap :prefix leader-key "SPC" 'helm-M-x)
  (vmap :prefix leader-key "SPC" 'helm-M-x))

(use-package helm-swoop
  :after helm
  :general
  (nmap "/" 'helm-swoop))

(use-package multiple-cursors
  :config (multiple-cursors-mode t)
  :general
  (vmap "a" 'mc/mark-all-like-this
    "p" 'mc/mark-previous-like-this
    "n" 'mc/mark-next-like-this
    "RET" 'mc/skip-to-next-like-this
    "DEL" 'mc/skip-to-previous-like-this))

(use-package avy
  :config
  (nmap
    "f" 'avy-goto-char-timer
    "F" 'avy-goto-line
    "t" 'avy-goto-char-in-line))

(use-package lsp-mode)

(use-package company-lsp
  :config (push 'company-lsp company-backends))

(use-package saveplace ; Saves location within buffer
  :hook (after-init . save-place-mode))

(use-package lorem-ipsum
  :general
  (nmap :prefix insert-key "l"
        '(lorem-ipsum-insert-paragraphs :which-key "Lorem")))

(use-package webpaste
  :general
  (nmap :prefix export-key "w" 'webpaste-paste-buffer)
  (vmap :prefix export-key "w" 'webpaste-paste-region))

(use-package elfeed
  :config (elfeed-update)
  :custom
  (elfeed-feeds
   '(
     ("http://nullprogram.com/feed/" blog emacs)
     "http://www.50ply.com/atom.xml"  ; no autotagging
     ("http://nedroid.com/feed/" webcomic)
     ("http://nedroid.com/feed/" webcomic)
     "https://lukesmith.xyz/rss.xml"
     "https://videos.lukesmith.xyz/feeds/videos.xml?accountId=3"
     )))


(provide 'common)
;;; common.el ends here
