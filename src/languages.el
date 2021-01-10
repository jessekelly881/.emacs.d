
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

(use-package typescript-mode
  :hook
  (typescript-mode . lsp)
  (typescript-mode
   . (lambda ()
       (mapc (lambda (pair) (push pair prettify-symbols-alist))
             '(
               ("<="      . #x2264)
               (">="      . #x2265)
               ("&&"      . #x2227)
               ("||"      . #x2228)
               ("==="      . #x2261)
               ("not"     . #x00AC)
               ("!="      . #x2260)

               ("true"    . #x1E6A)
               ("false"   . #x1E1E)

               ("if"      . #x003F)
               ("if not"  . #x203D)
               ("else"    . #x00BB)

               ("null" .     #x2205)

               ("function" . #x0192)
               ("export" .   #x21F1)
               ("return" .   #x219E)
               ("yield" .    #x21E0)
               ("this" .     #x21BA)

               ("import" .   #x03A9)
               ("from" .     #x00A7)
               ))))

  :config
  (add-to-list 'lsp-language-id-configuration '(typescript-mode . "typescriptreact"))
  (add-to-list 'auto-mode-alist '("\\.jsx$"  . typescript-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx$"  . typescript-mode)))


(use-package coffee-mode
  :mode ("\\.coffee\\'" . coffee-mode))

(use-package pug-mode
  :mode ("\\.pug\\'" . pug-mode))

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
