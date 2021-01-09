
;;; Code:

;; Delete trailing lines on save

(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(provide 'ui)
;;; ui.el ends here
