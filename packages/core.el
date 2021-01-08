;;; core --- Core packages
;;; Commentary:

;;; Code:
(use-package general)

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(provide 'core)
;;; core.el ends here
