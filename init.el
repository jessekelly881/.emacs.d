
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
