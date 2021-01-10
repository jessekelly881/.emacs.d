
;;; Code:

;; Config:

;; Settings

;; Fix paths
(setq
 user-init-file (or load-file-name (buffer-file-name))
 user-emacs-directory (file-name-directory user-init-file))

(load (expand-file-name "settings.el" user-emacs-directory))
(load (expand-file-name "src/index.el" user-emacs-directory))

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

(provide 'init)
;;; init.el ends here
