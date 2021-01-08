;;; defaults --- Sane defaults
;;; Commentary:

;;; Code:
(setq-default
    ad-redefinition-action 'accept         ; Silence warnings for redefinition
    auto-save-list-file-prefix nil         ; Prevent tracking for auto-saves
    cursor-in-non-selected-windows nil     ; Hide the cursor in inactive windows
    cursor-type 'bar                       ; Prefer a bar-shaped cursor
    custom-unlispify-menu-entries nil      ; Prefer kebab-case for titles
    custom-unlispify-tag-names nil         ; Prefer kebab-case for symbols
    delete-by-moving-to-trash t            ; Delete files to trash
    fill-column 80                         ; Set width for automatic line breaks
    gc-cons-threshold (* 8 1024 1024)      ; We're not using Game Boys anymore
    help-window-select t                   ; Focus new help windows when opened
    indent-tabs-mode nil                   ; Stop using tabs to indent
    inhibit-startup-screen t               ; Disable start-up screen
    initial-scratch-message ""             ; Empty the initial *scratch* buffer
    mouse-yank-at-point t                  ; Yank at point rather than pointer
    recenter-positions '(5 top bottom)     ; Set re-centering positions
    scroll-conservatively 101              ; Avoid recentering when scrolling far
    scroll-margin 2                        ; Add a margin when scrolling vertically
    select-enable-clipboard t              ; Merge system's and Emacs' clipboard
    sentence-end-double-space nil          ; Use a single space after dots
    show-help-function nil                 ; Disable help text everywhere
    tab-width 4                            ; Set width for tabs
    uniquify-buffer-name-style 'forward    ; Uniquify buffer names
    window-combination-resize t            ; Resize windows proportionally
    x-stretch-cursor t)                    ; Stretch cursor to the glyph width

(delete-selection-mode 1)                  ; Replace region when inserting text
(fset 'yes-or-no-p 'y-or-n-p)              ; Replace yes/no prompts with y/n
(global-subword-mode 1)                    ; Iterate through CamelCase words
(mouse-avoidance-mode 'exile)              ; Avoid collision of mouse with point
(put 'downcase-region 'disabled nil)       ; Enable downcase-region
(put 'upcase-region 'disabled nil)         ; Enable upcase-region
(set-default-coding-systems 'utf-8)        ; Default to utf-8 encoding
(menu-bar-mode -1)                         ; Hide menu bar
(toggle-scroll-bar -1)                     ; Hide scroll bar
(tool-bar-mode -1)                         ; Hide toolbar


(provide 'defaults)
;;; defaults.el ends here
