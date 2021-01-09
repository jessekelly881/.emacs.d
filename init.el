
;;; Code:

;; Config:

;; Settings

;; Fix paths
(setq
 user-init-file (or load-file-name (buffer-file-name))
 user-emacs-directory (file-name-directory user-init-file))

(load (expand-file-name "settings.el" user-emacs-directory))
(load (expand-file-name "src/index.el" user-emacs-directory))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["white" "#303030" "#b3b3b3" "#606060"])
 '(clojure-indent-style 'always-indent)
 '(company-idle-delay 1)
 '(company-minimum-prefix-length 3)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-tabnine-max-num-results 9)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(custom-safe-themes
   '("7f6d4aebcc44c264a64e714c3d9d1e903284305fd7e319e7cb73345a9994f5ef" default))
 '(evil-collection-setup-minibuffer t)
 '(fci-rule-color "#4F4F4F")
 '(gac-ask-for-summary-p t t)
 '(git-commit-major-mode 'org-mode)
 '(git-gutter:added-sign " + ")
 '(git-gutter:deleted-sign " - ")
 '(git-gutter:modified-sign " ~ ")
 '(helm-minibuffer-history-key "M-p")
 '(highlight-changes-colors '("#DC8CC3" "#bbb0cb"))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-indent-guides-method 'column)
 '(highlight-indentation-blank-lines t t)
 '(highlight-symbol-colors
   '("#680f63eb5998" "#54db645064d0" "#6097535f5322" "#5c2859a95fa1" "#4ede55f24ea4" "#64dd5979525e" "#530060d16157"))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   '(("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100)))
 '(hl-bg-colors
   '("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249"))
 '(hl-fg-colors
   '("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F"))
 '(hl-paren-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(hl-paren-colors '("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F"))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2aa198")
     ("PROG" . "#268bd2")
     ("OKAY" . "#268bd2")
     ("DONT" . "#d70000")
     ("FAIL" . "#d70000")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#875f00")
     ("KLUDGE" . "#875f00")
     ("HACK" . "#875f00")
     ("TEMP" . "#875f00")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(indium-chrome-executable "google-chrome-stable" t)
 '(keyfreq-excluded-commands
   '(evil-append evil-backward-char evil-change evil-delete evil-delete evil-forward-char evil-insert evil-insert-line evil-next-line evil-normal-state evil-open-below evil-previous-line evil-repeat helm-M-x helm-next-line helm-previous-line keyboard-quit magit-next-line magit-previous-line minibuffer-complete my/quit next-line org-self-insert-command save-buffer self-insert-command self-insert-command undo-tree-undo) t)
 '(ledger-clear-whole-transactions t t)
 '(linum-format "%d")
 '(linum-relative-backend 'display-line-numbers-mode)
 '(lsp-ui-doc-border "#FFFFEF")
 '(magit-stage-all-confirm nil t)
 '(magit-unstage-all-confirm nil t)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb"))
 '(org-attach-git-annex-cutoff 10000 t)
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   '(centered-cursor-mode carbon-now-sh jupyter ob-typescript ts-comint js-comint elm-mode ob-clojurescript git-annex haskell-mode clojure-mode dired dired-jump dired-narrow dired-rainbow fancy-narrow cyberpunk-theme spacemacs-theme solarized-theme zenburn-theme paper-theme js-import dired-subtree emr rainbow-mode almost-mono-themes purp-theme dracula-theme yankpad yaml-mode xclip writegood-mode which-key webpaste web-mode use-package try tide sublime-themes smartparens smart-semicolon smart-hungry-delete smart-backspace skeletor rust-mode restart-emacs ranger rainbow-delimiters python-django pug-mode prettier-js posframe origami org-sticky-header olivetti ob-rust npm-mode nord-theme nodejs-repl nand2tetris monochrome-theme mermaid-mode magit-todos lsp-ui lorem-ipsum loccur linum-relative ledger-mode keyfreq js-doc insert-shebang indium hydra highlight-thing highlight-indent-guides highlight hide-mode-line helm-themes helm-swoop helm-projectile helm-eww helm-dash helm-chronos helm-c-yasnippet helm-ag google-translate golden-ratio gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-gutter git-auto-commit-mode gist general fold-this focus expand-region evil-surround evil-exchange evil-collection emmet-mode elfeed dumb-jump drag-stuff dockerfile-mode docker devdocs dart-mode crux company-tabnine company-lsp coffee-mode clues-theme bug-hunter blackboard-theme beacon auto-package-update ag ace-window))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#262626"))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(skeletor-project-directory "/home/jesse/dev/projects/active")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#CC9393")
     (40 . "#df51b97ca1ae")
     (60 . "#e83dcc9aa8b1")
     (80 . "#F0DFAF")
     (100 . "#cadbca369f51")
     (120 . "#b7fbbf79973e")
     (140 . "#a52cb4cc8f3f")
     (160 . "#9260aa2d8754")
     (180 . "#7F9F7F")
     (200 . "#87dbb4dba003")
     (220 . "#8b6ebfadb0a1")
     (240 . "#8e96ca9fc17c")
     (260 . "#914ed5b0d293")
     (280 . "#93E0E3")
     (300 . "#90c5da6cdd6f")
     (320 . "#8f5dd735da39")
     (340 . "#8df4d401d704")
     (360 . "#8CD0D3")))
 '(vc-annotate-very-old-color nil)
 '(webpaste-paste-confirmation t)
 '(weechat-color-list
   '(unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F"))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(dired-subtree-depth-1-face ((t (:background "undefinded-bg"))))
 '(dired-subtree-depth-2-face ((t (:background "undefinded-bg"))))
 '(flycheck-warning ((t (:underline "dim gray" :weight extra-bold))))
 '(font-lock-constant-face ((t (:background "undefinded-bg"))))
 '(font-lock-function-name-face ((t (:background "undefinded-bg"))))
 '(font-lock-keyword-face ((t (:background "undefinded-bg"))))
 '(font-lock-preprocessor-face ((t (:background "undefinded-bg"))))
 '(font-lock-string-face ((t (:background "undefinded-bg"))))
 '(font-lock-type-face ((t (:background "undefinded-bg"))))
 '(font-lock-variable-name-face ((t (:background "undefinded-bg"))))
 '(header-line ((t (:background "undefinded-bg" :foreground "gray15"))))
 '(helm-selection ((t (:background "undefinded-bg" :underline t))))
 '(helm-source-header ((t (:background "undefinded-bg" :weight bold))))
 '(highlight ((t (:background "undefinded-bg" :underline t))))
 '(highlight-thing ((t (:inherit 'highlight))))
 '(hl-line ((t (:extend t :background "undefinded-bg" :underline t))))
 '(lsp-ui-doc-background ((t nil)))
 '(magit-diff-added ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-added-highlight ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-base ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-base-highlight ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-context-highlight ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-hunk-heading ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-hunk-heading-highlight ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-removed ((t (:extend t :background "undefinded-bg"))))
 '(magit-diff-removed-highlight ((t (:extend t :background "undefinded-bg"))))
 '(magit-section-highlight ((t (:extend t :background "undefinded-bg"))))
 '(mode-line ((t (:background "undefinded-bg" :foreground "#000000"))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
 '(show-paren-match ((t (:background "undefinded-bg" :underline t :weight bold)))))
