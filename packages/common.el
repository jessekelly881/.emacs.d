;;; common --- Common packages
;;; Commentary:

;;; Code:
(use-package general)

;; Evil
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (general-evil-setup t)
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-surround
  :general
  (nmap "S" 'evil-surround-edit)
  :config
  (global-evil-surround-mode 1))

;; Helm
(use-package helm
  :config (setq helm-follow-mode-persistent t)
  :general
  ("C-h a"   'helm-apropos)
  ("M-x"     'helm-M-x)
  ("C-x C-f" 'helm-find-files)
  (nmap :prefix "SPC" "SPC" 'helm-M-x)
  (vmap :prefix "SPC" "SPC" 'helm-M-x))

(provide 'common)
;;; common.el ends here
