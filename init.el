(setq inhibit-startup-screen t
      initial-scratch-message nil)

(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil
      custom-file null-device)
(save-place-mode 1)

(setq font-lock-maximum-decoration 1)
(setq c-default-style "linux")
(show-paren-mode -1)
(setq blink-matching-paren nil)

(setq ns-command-modifier 'meta
      ns-option-modifier 'super)

(set-frame-font (font-spec :family "PragmataPro VF Mono"
                           :size (round (* 3.3 (/ (display-pixel-height) (float (display-mm-height))))))
                t t)

(when (eq system-type 'windows-nt)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-frame-parameter nil 'fullscreen nil)
              (set-frame-parameter nil 'fullscreen 'maximized)
              (make-frame-visible))))

(load-theme 'my t)
