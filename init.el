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
