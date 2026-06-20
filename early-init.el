(load (expand-file-name "ui.el" user-emacs-directory) t t)

(load (expand-file-name "local.el" user-emacs-directory) t t)

(setq ns-command-modifier 'meta
      ns-option-modifier 'super)

(setq make-backup-files nil
      create-lockfiles nil
      initial-buffer-choice "~/Dropbox/todo.txt")

(save-place-mode 1)
(auto-save-visited-mode 1)
(global-auto-revert-mode 1)

(setq c-default-style "linux")
