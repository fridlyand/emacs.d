;;; naysayer-dark-theme.el --- Dark naysayer sibling: literals that blaze  -*- lexical-binding: t; -*-

;; Same discipline as naysayer-cream: only comments, strings, and numbers carry
;; color; every other token stays plain (warm tan).  A dark ground lets the
;; accents glow the way a light theme structurally can't.

(deftheme naysayer-dark
  "Dark ground, warm-tan body, three bright literal accents.")

(let ((bg    "#0E1A1A")   ; dark teal-charcoal
      (fg    "#D8CCA8")   ; warm tan body (all code is this)
      (dim   "#6E7A72")   ; secondary / shadow
      (sel   "#27403E")   ; selection
      (cyan  "#2A4A4C")   ; dim highlight bg
      (bar   "#16292B")   ; mode-line
      (green "#6FAE4F")   ; comments (bright green)
      (teal  "#3FBDA8")   ; strings (bright teal)
      (num   "#5FB8E6")   ; number literals (bright sky-blue)
      (red   "#E5675F"))  ; errors
  (custom-theme-set-faces
   'naysayer-dark
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
   `(isearch ((t (:background ,teal :foreground ,bg))))
   `(lazy-highlight ((t (:background ,cyan :foreground ,fg))))
   `(shadow ((t (:foreground ,dim))))
   `(error ((t (:foreground ,red :weight bold))))
   `(warning ((t (:foreground ,fg :weight bold))))
   `(success ((t (:foreground ,fg))))
   `(link ((t (:foreground ,fg :underline t))))
   ;; font-lock: comments, strings, and number literals carry color
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

(provide-theme 'naysayer-dark)
;;; naysayer-dark-theme.el ends here
