(use-package projectile
  :config (projectile-mode))

(use-package helm-projectile
  :config (helm-projectile-on)
  :general
  (nmap :prefix project-key "o"
    '(helm-projectile-switch-project :which-key "Open project"))
  (nmap :prefix project-key "/" '(helm-projectile-ag :which-key "Search")))

 ; Package manager modes

(use-package npm-mode
  :config (npm-global-mode)
  :general
  (nmap :prefix project-key
    :keymaps '(typescript-mode-map js2-mode-map javascript-mode-map)
    "d" '(npm-mode-npm-list :which-key "Deps")))
