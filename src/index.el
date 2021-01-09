;;; index --- Entry point for config
;;; Commentary:

;;; Code:
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

;; Setup package manager
(straight-use-package 'use-package)
(setq
 straight-use-package-by-default t
 use-package-always-ensure t
 )

(use-package bug-hunter) ; Automated error hunting for elisp


(load (expand-file-name "src/common.el" user-emacs-directory))
(load (expand-file-name "src/themes.el" user-emacs-directory))
(load (expand-file-name "src/languages.el" user-emacs-directory))
(load (expand-file-name "src/vc.el" user-emacs-directory))
(load (expand-file-name "src/ui.el" user-emacs-directory))

(provide 'index)
;;; index.el ends here
