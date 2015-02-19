(add-to-list 'load-path "~/.emacs.d/site-lisp/pdee")
(require 'python-mode)

;; Initialize elpy
(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(elpy-use-ipython)

(provide 'init-python)
