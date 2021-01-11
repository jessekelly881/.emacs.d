(use-package projectile
  :config (projectile-mode))

(use-package helm-projectile
  :config (helm-projectile-on)
  :general
  (nmap :prefix project-key "o"
    '(helm-projectile-switch-project :which-key "Open project"))
  (nmap :prefix project-key "/" '(helm-projectile-ag :which-key "Search")))
