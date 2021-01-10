
; Open emacs config in dired buffer.
(defun j/open-config ()
  (interactive)
  (dired-other-window (expand-file-name "src" user-emacs-directory)))
