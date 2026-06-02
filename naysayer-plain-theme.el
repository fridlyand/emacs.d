;;; naysayer-plain-theme.el --- Pure Acme: uniform text, color only in the UI  -*- lexical-binding: t; -*-

;; The rsc / Pike pole: no syntax color at all.  Comments, strings, numbers,
;; keywords, types -- every code token renders in the body color.  font-lock
;; stays ON, so dired / org / magit keep their own faces; only code goes flat.

(deftheme naysayer-plain
  "Cream Acme canvas with no syntax highlighting; color lives only in the UI.")

(let ((bg    "#FFFFEA")
      (fg    "#000000")
      (dim   "#8A8A82")
      (sel   "#EEEE9E")
      (cyan  "#9EEEEE")
      (bar   "#EAFFFF")
      (red   "#880000"))
  (custom-theme-set-faces
   'naysayer-plain
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
   ;; every code token collapses to the body color
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

(provide-theme 'naysayer-plain)
;;; naysayer-plain-theme.el ends here
