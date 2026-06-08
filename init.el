(setq inhibit-startup-screen t
      initial-scratch-message nil)

(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil
      custom-file null-device)
(save-place-mode 1)

(setq default-directory "~/")

(setq font-lock-maximum-decoration 1)
(setq c-default-style "linux")
(show-paren-mode -1)
(setq blink-matching-paren nil)

(setq ns-command-modifier 'meta
      ns-option-modifier 'super)

(load-theme 'my t)
