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
(require 'init-cc)
(require 'init-helm)
(require 'init-helm-gtags)
(require 'init-gui)
(require 'init-markdown)
(require 'init-org)
(require 'init-lisp)
(require 'init-slime)
(require 'init-git)
(require 'init-github)
(require 'init-editing-utils)
(require 'init-vc)
(require 'init-python)
