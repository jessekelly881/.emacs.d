
;;; Code:

;; Imports
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(load (expand-file-name "defaults.el" user-emacs-directory))

(defvar bootstrap-version)
(let ((bootstrap-file
    (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
    (bootstrap-version 5))

(unless (file-exists-p bootstrap-file)
(with-current-buffer
    (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
    (goto-char (point-max))
    (eval-print-last-sexp)))

(load bootstrap-file nil 'nomessage))

;; setup use-package
(straight-use-package 'use-package)
(setq
 straight-use-package-by-default t
 use-package-always-ensure t
 )

(provide 'init)
;;; init.el ends here
