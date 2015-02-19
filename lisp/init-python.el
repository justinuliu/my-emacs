(add-to-list 'load-path "~/.emacs.d/site-lisp/pdee")
(require 'python-mode)

;; Initialize elpy
(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(elpy-use-ipython)
;; change key for pop tag
(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)
(provide 'init-python)
