;;; theme.el --- Pure Acme cream: no syntax highlighting  -*- lexical-binding: t; -*-

;; Every code token is plain black; color lives only in the UI (mode-line,
;; selection).  Cream (Plan 9 Acme) background.  Loaded from init.el.

(let ((bg   "#FFFFEA")   ; Acme cream
      (fg   "#000000")
      (dim  "#8A8A82")   ; secondary / shadow
      (sel  "#EEEE9E")   ; selection (Acme yellow)
      (cyan "#9EEEEE")
      (bar  "#EAFFFF")   ; mode-line
      (red  "#880000"))  ; errors
  (set-face-attribute 'default nil :background bg :foreground fg)
  (set-face-attribute 'cursor nil :background fg)
  (set-face-attribute 'region nil :background sel :extend t)
  (set-face-attribute 'secondary-selection nil :background cyan :extend t)
  (set-face-attribute 'highlight nil :background cyan)
  (set-face-attribute 'fringe nil :background bg :foreground bg)
  (set-face-attribute 'mode-line nil :background bar :foreground fg :box nil)
  (set-face-attribute 'mode-line-inactive nil :background bar :foreground dim :box nil)
  (set-face-attribute 'minibuffer-prompt nil :foreground fg)
  (set-face-attribute 'isearch nil :background sel :foreground fg)
  (set-face-attribute 'lazy-highlight nil :background cyan :foreground fg)
  (set-face-attribute 'shadow nil :foreground dim)
  (set-face-attribute 'error nil :foreground red :weight 'bold)
  (set-face-attribute 'warning nil :foreground fg :weight 'bold)
  (set-face-attribute 'success nil :foreground fg)
  (set-face-attribute 'link nil :foreground fg :underline t)
  (set-face-attribute 'font-lock-warning-face nil :foreground red :weight 'bold)
  (dolist (face '(font-lock-comment-face
                  font-lock-comment-delimiter-face
                  font-lock-doc-face
                  font-lock-string-face
                  font-lock-number-face
                  font-lock-keyword-face
                  font-lock-function-name-face
                  font-lock-variable-name-face
                  font-lock-type-face
                  font-lock-constant-face
                  font-lock-builtin-face
                  font-lock-preprocessor-face
                  font-lock-negation-char-face))
    (when (facep face)
      (set-face-attribute face nil :foreground fg))))

;;; theme.el ends here
