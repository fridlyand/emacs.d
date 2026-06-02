(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

(setq backup-directory-alist `(("." . ,(locate-user-emacs-file "backups")))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      create-lockfiles nil
      custom-file (make-temp-file "emacs-custom-"))
(save-place-mode 1)
(desktop-save-mode 1)

(setq font-lock-maximum-decoration 1)
(setq blink-matching-paren nil)

(setq ns-command-modifier 'meta)
(setq ns-option-modifier 'super)

(load-theme 'naysayer-cream t)
