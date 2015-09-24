(add-to-list 'load-path "~/.emacs.d/site-lisp/pdee")
(require-package 'python-mode)
(require-package 'elpy)
(require 'python-mode)
(require 'elpy)

;; Initialize elpy
(package-initialize)
(elpy-enable)
;;(setq elpy-rpc-backend "jedi")
(elpy-use-ipython)
;; change key for pop tag
(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)

(require-package 'company-jedi)
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)
(provide 'init-python)
