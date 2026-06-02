;;; naysayer-cream-theme.el --- Acme cream + a quiet naysayer palette  -*- lexical-binding: t; -*-

;; Font-lock ON, but low-contrast: only comments, strings, and numbers carry
;; muted color; every other token type stays plain black.  Cream (Plan 9 Acme) bg.

(deftheme naysayer-cream
  "Cream background with a quiet, low-contrast naysayer-style palette.")

(let ((bg    "#FFFFEA")   ; Acme cream
      (fg    "#000000")
      (dim   "#8A8A82")   ; secondary / shadow
      (sel   "#EEEE9E")   ; selection (Acme yellow)
      (cyan  "#9EEEEE")
      (bar   "#EAFFFF")   ; mode-line
      (green "#2F7A2F")   ; comments (clearer green, pushed away from teal)
      (teal  "#2F6F6F")   ; strings (the teal anchor)
      (num   "#1F6FA0")   ; number literals (bluer, pushed away from teal)
      (red   "#880000"))  ; errors
  (custom-theme-set-faces
   'naysayer-cream
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
   ;; font-lock: comments, strings, and number literals carry muted color
   `(font-lock-comment-face ((t (:foreground ,green))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,green))))
   `(font-lock-doc-face ((t (:foreground ,green))))
   `(font-lock-string-face ((t (:foreground ,teal))))
   `(font-lock-number-face ((t (:foreground ,num))))
   ;; font-lock: everything else stays plain (suppress Emacs' colorful defaults)
   `(font-lock-keyword-face ((t (:foreground ,fg))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,fg))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-builtin-face ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg))))
   `(font-lock-negation-char-face ((t (:foreground ,fg))))
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))))

(provide-theme 'naysayer-cream)
;;; naysayer-cream-theme.el ends here
