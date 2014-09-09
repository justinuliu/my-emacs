;unset C-z
(global-unset-key (kbd "C-z"))

(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; believe me, you don't need menubar, toolbar nor scrollbar
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
;; Use ibuffer default
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Use solarized theme
(require-package 'solarized-theme)
(load-theme 'solarized-dark t)

(provide 'init-gui)
