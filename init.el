
;;; Code:

;; Imports

;; Config:

;; User
(setq
 user-mail-address "kellyjesse881@gmail.com"
 user-full-name "Jesse Kelly")

;; Key bindings
(setq
 leader-key "SPC"
 visual-key (concat leader-key " v")
 )

;; Paths
(setq
 user-init-file (or load-file-name (buffer-file-name))
 user-emacs-directory (file-name-directory user-init-file))

(load (expand-file-name "defaults.el" user-emacs-directory))
(load (expand-file-name "packages/index.el" user-emacs-directory))
(load (expand-file-name "ui.el" user-emacs-directory))

(provide 'init)
;;; init.el ends here
