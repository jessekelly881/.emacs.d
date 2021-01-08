
;;; Code:

;; Programming

(use-package haskell-mode)
(use-package rust-mode)
(use-package python-django)

(use-package clojure-mode
  :custom
  (clojure-indent-style 'always-indent))


;; Web

(use-package web-mode)
(use-package elm-mode)
(use-package dart-mode)

(use-package coffee-mode
  :mode ("\\.coffee\\'" . coffee-mode))

(use-package pug-mode
  :mode ("\\.pug\\'" . pug-mode))

(use-package js2-mode
  :hook (js-mode . js2-minor-mode))


;; Config file modes

(use-package gitignore-mode)
(use-package gitattributes-mode)
(use-package gitconfig-mode)
(use-package yaml-mode)
(use-package dockerfile-mode)

(use-package markdown-mode
  :mode ("\\.md\\'" . markdown-mode))


;; Misc

(use-package ledger-mode
  :mode ("\\.ledger\\'")
  :custom (ledger-clear-whole-transactions t))


(provide 'languages)
;;; languages.el ends here
