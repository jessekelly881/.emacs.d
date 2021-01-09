;;; common --- Common packages
;;; Commentary:

;;; Code:
(use-package general)

(use-package which-key
  :custom (setq which-key-idle-delay 0.4)
  :config (which-key-mode))

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

(use-package multiple-cursors)
(use-package flycheck
  :config (global-flycheck-mode))

(provide 'common)
;;; common.el ends here
