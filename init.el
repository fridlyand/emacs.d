(setq inhibit-startup-screen t
      initial-scratch-message nil)

(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil
      custom-file null-device)
(save-place-mode 1)

(add-hook 'emacs-startup-hook (lambda () (cd "~")))

(setq font-lock-maximum-decoration 1)
(setq c-default-style "linux")
(show-paren-mode -1)
(setq blink-matching-paren nil)

(setq ns-command-modifier 'meta
      ns-option-modifier 'super)

(set-frame-font (if (< (display-mm-width) 400)
                    "PragmataPro VF Mono-12"
                  "PragmataPro VF Mono-16")
                t t)

(when (eq system-type 'windows-nt)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-frame-parameter nil 'fullscreen nil)
              (set-frame-parameter nil 'fullscreen 'maximized)
              (make-frame-visible))))

(load-theme 'my t)
