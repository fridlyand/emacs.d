(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode '(4 . 4))

(setq frame-resize-pixelwise t)
(setq ns-use-proxy-icon nil)
(push '(fullscreen . maximized) default-frame-alist)
(push '(font . "PragmataPro VF Mono-11.5") default-frame-alist)
(push '(ns-transparent-titlebar . t) default-frame-alist)

(let ((local (expand-file-name "local.el" user-emacs-directory)))
  (when (file-exists-p local) (load local nil t)))
