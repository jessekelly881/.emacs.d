;;; settings --- Sane defaults
;;; Commentary:

;;; Code:

;; Variables
(setq
 user-full-name "Jesse Kelly"
 user-mail-address "kellyjesse881@gmail.com"
 calendar-latitude 19.4326
 calendar-longitude -99.1332
 calendar-location-name "Mexico City, MX"
 )

(setq
 leader-key "SPC"                                     ; SPC
 git-key (concat leader-key " g")                     ; SPC g
 insert-key (concat leader-key " i")                  ; SPC i
 visual-key (concat leader-key " v")                  ; SPC v
 export-key (concat leader-key " x")                  ; SPC x
 project-key (concat leader-key " p")                 ; SPC p
 )

;; General settings

(setq-default
    ad-redefinition-action 'accept                             ; Silence warnings for redefinition
    auto-revert-verbose nil
    auto-save-default nil                                      ; Stop creating #autosave# files
    auto-save-list-file-prefix nil                             ; Prevent tracking for auto-saves
    cursor-in-non-selected-windows nil                         ; Hide the cursor in inactive windows
    cursor-type 'bar                                           ; Prefer a bar-shaped cursor
    custom-unlispify-menu-entries nil                          ; Prefer kebab-case for titles
    custom-unlispify-tag-names nil                             ; Prefer kebab-case for symbols
    debug-on-error t                                           ; Show debug info on error
    delete-by-moving-to-trash t                                ; Delete files to trash
    fill-column 80                                             ; Set width for automatic line breaks
    gc-cons-threshold (* 8 1024 1024)                          ; We're not using Game Boys anymore
    header-line-format t                                       ; Make header line blank
    help-window-select t                                       ; Focus new help windows when opened
    indent-tabs-mode nil                                       ; Stop using tabs to indent
    inhibit-startup-screen t                                   ; Disable start-up screen
    initial-scratch-message ""                                 ; Empty the initial *scratch* buffer
    make-backup-files nil                                      ; Stop creating backup~ files
    mouse-yank-at-point t                                      ; Yank at point rather than pointer
    next-line-add-newlines t                                   ; Add lines on line down
    recenter-positions '(5 top bottom)                         ; Set re-centering positions
    scroll-conservatively 101                                  ; Avoid recentering when scrolling far
    scroll-margin 2                                            ; Add a margin when scrolling vertically
    select-enable-clipboard t                                  ; Merge system's and Emacs' clipboard
    sentence-end-double-space nil                              ; Use a single space after dots
    show-help-function nil                                     ; Disable help text everywhere
    show-paren-delay 0                                         ; Highlight matching paren without delay
    tab-width 4                                                ; Set width for tabs
    uniquify-buffer-name-style 'forward                        ; Uniquify buffer names
    user-emacs-directory (file-name-directory user-init-file)
    user-init-file (or load-file-name (buffer-file-name))
    window-combination-resize t                                ; Resize windows proportionally
    x-stretch-cursor t)                                        ; Stretch cursor to the glyph width

(delete-selection-mode 1)                                      ; Replace region when inserting text
(fset 'yes-or-no-p 'y-or-n-p)                                  ; Replace yes/no prompts with y/n
(global-hl-line-mode +1)                                       ; Underline current line
(global-subword-mode 1)                                        ; Iterate through CamelCase words
(menu-bar-mode -1)                                             ; Hide menu bar
(mouse-avoidance-mode 'exile)                                  ; Avoid collision of mouse with point
(put 'downcase-region 'disabled nil)                           ; Enable downcase-region
(put 'upcase-region 'disabled nil)                             ; Enable upcase-region
(set-default-coding-systems 'utf-8)                            ; Default to utf-8 encoding
(toggle-scroll-bar -1)                                         ; Hide scroll bar
(tool-bar-mode -1)                                             ; Hide toolbar
(scroll-bar-mode -1)                                           ; Hide the scroll bar
(global-auto-revert-mode t)                                    ; Autorevert buffer when file changed on disk



(provide 'settings)
;;; settings.el ends here
