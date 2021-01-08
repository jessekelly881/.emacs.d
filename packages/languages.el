
;;; Code:
(use-package pug-mode :mode ("\\.pug\\'" . pug-mode))
(use-package web-mode)
(use-package coffee-mode :mode ("\\.coffee\\'" . coffee-mode))
(use-package markdown-mode :mode ("\\.md\\'" . markdown-mode))
(use-package clojure-mode
  :custom
  (clojure-indent-style 'always-indent))
(use-package haskell-mode)
(use-package nand2tetris
  :init (setq nand2tetris-core-base-dir "~/dev/projects/nand2tetris")
  :config (add-to-list 'auto-mode-alist '("\\.hdl\\'" . nand2tetris-mode))
  :mode ("\\.hdl\\'" . nand2tetris-mode))
(use-package python-django :mode ("\\.py\\'" . python-mode))
(use-package dart-mode)
(use-package dockerfile-mode)
(use-package js2-mode
  :hook
  (js-mode . js2-minor-mode))
(use-package ledger-mode
  :mode ("\\.ledger\\'")
  :custom (ledger-clear-whole-transactions t))
(use-package rust-mode)
(use-package gitignore-mode)
(use-package gitattributes-mode)
(use-package gitconfig-mode)
(use-package yaml-mode)
(use-package elm-mode)

(provide 'languages)
;;; languages.el ends here
