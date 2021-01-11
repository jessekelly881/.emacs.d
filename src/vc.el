;;; vc --- Summary
;;; Commentary:

;;; Code:
(use-package git-timemachine)

(use-package git-gutter
  :custom
  (git-gutter:modified-sign "~")
  (git-gutter:added-sign    "+")
  (git-gutter:deleted-sign  "-")
  :config
  (global-git-gutter-mode +1))

(use-package magit
  :custom
  (magit-stage-all-confirm nil)
  (magit-unstage-all-confirm nil)
  (git-commit-summary-max-length 50)
  (git-commit-fill-column 72)
  (git-commit-major-mode 'org-mode)
  :hook
  (after-save-hook . magit-after-save-refresh-status)
  (git-commit-mode . evil-normal-state))

(use-package magit-todos
  :hook (after-init . magit-todos-mode))

(general-def 'normal :prefix git-key
  "s" '(magit :which-key "Status")
  "t" '(git-timemachine :which-key "Timemachine"))


(provide 'vc)
;;; vc.el ends here
