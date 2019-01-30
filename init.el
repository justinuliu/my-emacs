(setq user-emacs-directory "~/.emacs.d")
;;;
(defconst *is-a-mac* (eq system-type 'darwin))
;;----------------------------------------------------------------------------
;; Init cedet
;;----------------------------------------------------------------------------
(load-file (expand-file-name "site-lisp/cedet/cedet-devel-load.el"
                             user-emacs-directory))
(load-file (expand-file-name "site-lisp/cedet/contrib/cedet-contrib-load.el"
                             user-emacs-directory))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-utils)
(require 'init-elpa)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
;;(require 'init-cc)
(require 'init-helm-projectile)
(require 'init-helm-gtags)
(require 'init-gui)
(require 'init-fonts)
(require 'init-markdown)
(require 'init-org)
(require 'init-editing-utils)
(require 'init-paredit)
(require 'init-lisp)
(require 'init-slime)
(require 'init-git)
(require 'init-github)
(require 'init-vc)
(require 'init-python)
(require 'init-javascript)
(require 'init-css)
;;(require 'init-html)
(require 'init-php)
(require 'init-sql)
(require 'init-compile)
(require 'init-xterm)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (alert sql-indent smarty-mode php-mode yagist whole-line-or-region unfill solarized-theme slime-company skewer-less scss-mode sass-mode rainbow-mode rainbow-delimiters python-mode pip-requirements mmm-mode markdown-mode magit-gh-pulls lively json-mode js-comint ipretty hippie-expand-slime helm-projectile helm-gtags gitignore-mode github-clone github-browse-file gitconfig-mode git-timemachine git-messenger fullframe elisp-slime-nav diff-hl default-text-scale css-eldoc company-jedi coffee-mode bug-reference-github auto-compile ac-js2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
