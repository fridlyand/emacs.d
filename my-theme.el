;;; my-theme.el --- Pure Acme cream: no syntax highlighting  -*- lexical-binding: t; -*-

;; Every code token is plain black; color lives only in the UI (mode-line,
;; selection).  Cream (Plan 9 Acme) background.

(deftheme my
  "Cream Acme canvas; no syntax highlighting, color only in the UI.")

(let ((bg    "#FFFFEA")   ; Acme cream
      (fg    "#000000")
      (dim   "#8A8A82")   ; secondary / shadow
      (sel   "#EEEE9E")   ; selection (Acme yellow)
      (cyan  "#9EEEEE")
      (bar   "#EAFFFF")   ; mode-line
      (red   "#880000"))  ; errors
  (custom-theme-set-faces
   'my
   ;; base / always-on UI roots
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,fg))))
   `(region ((t (:background ,sel :extend t))))
   `(secondary-selection ((t (:background ,cyan :extend t))))
   `(highlight ((t (:background ,cyan))))
   `(fringe ((t (:background ,bg :foreground ,bg))))
   `(mode-line ((t (:background ,bar :foreground ,fg :box nil))))
   `(mode-line-inactive ((t (:background ,bar :foreground ,dim :box nil))))
   `(minibuffer-prompt ((t (:foreground ,fg))))
   `(isearch ((t (:background ,sel :foreground ,fg))))
   `(lazy-highlight ((t (:background ,cyan :foreground ,fg))))
   `(shadow ((t (:foreground ,dim))))
   `(error ((t (:foreground ,red :weight bold))))
   `(warning ((t (:foreground ,fg :weight bold))))
   `(success ((t (:foreground ,fg))))
   `(link ((t (:foreground ,fg :underline t))))
   `(vertical-border ((t (:foreground ,dim))))
   ;; no syntax highlighting: every code token is Acme black
   `(font-lock-comment-face ((t (:foreground ,fg))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fg))))
   `(font-lock-doc-face ((t (:foreground ,fg))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-number-face ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,fg))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,fg))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-builtin-face ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg))))
   `(font-lock-negation-char-face ((t (:foreground ,fg))))
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))))

(provide-theme 'my)
;;; my-theme.el ends here
