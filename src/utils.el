
; Open emacs config in dired buffer.
(defun j/open-config ()
  (interactive)
  (find-file-other-window (expand-file-name "src" user-emacs-directory)))


;; Contextual quit function. I.e. "kill the thing!"
(defun j/quit ()
  "An overloaded quit function.  Takes context into account."
  (interactive)
  (cond
   ((bound-and-true-p loccur-mode) (loccur-current))
   ((buffer-narrowed-p) (widen))
   ((org-buffer-narrowed-p) (widen))
   ((not (one-window-p)) (kill-buffer-and-window))
   (t (kill-current-buffer))))

;; Update packages
(defun j/update-packages ()
  "Update all packages"
  (interactive)
  (when (y-or-n-p "Update all available packages?")
    (straight-pull-all)))
