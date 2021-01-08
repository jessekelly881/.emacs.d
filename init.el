
;;; Code:

;; Imports
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(load (expand-file-name "defaults.el" user-emacs-directory))
(load (expand-file-name "packages/index.el" user-emacs-directory))


(provide 'init)
;;; init.el ends here
