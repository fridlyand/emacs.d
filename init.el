(setq inhibit-startup-screen t
      initial-scratch-message nil)

(setq backup-directory-alist `(("." . ,(locate-user-emacs-file "backups")))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      create-lockfiles nil
      custom-file null-device)
(save-place-mode 1)
(desktop-save-mode 1)

(setq font-lock-maximum-decoration 1)
(setq c-default-style "linux")
(show-paren-mode -1)
(setq blink-matching-paren nil)

(setq ns-command-modifier 'meta
      ns-option-modifier 'super)

(load-theme 'my t)
