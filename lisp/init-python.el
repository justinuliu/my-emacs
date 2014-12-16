(require-package 'python-mode)
(require 'python-mode)
(require-package 'elpy)
(package-initialize)
(elpy-enable)
;; (require-package 'jedi)
;; (require-package 'jedi-direx)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)                 ; optional
;; (setq elpy-rpc-backend "jedi")
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

;; config auto complete
;;(require 'auto-complete)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;;(require 'auto-complete-config)
;;(ac-config-default)
;;(global-auto-complete-mode t)
;;
;; config fill column indicator
;;(require-package 'fill-column-indicator)
;;(require 'fill-column-indicator)
;;(define-globalized-minor-mode
;; global-fci-mode fci-mode (lambda () (fci-mode 1)))
;;(global-fci-mode t)
;;
; python-mode
;;(require-package 'python-mode)
;;(require 'python-mode)

;; use IPython
(require-package 'ipython)
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

;;(with-output-to-temp-buffer "*IPython Completions*"
;; (display-completion-list
;; (all-completions pattern completions)))
;; (set-buffer "*IPython Completions*")
;; (switch-to-buffer "*IPython Completions*")
;; (goto-char (point-min))
;; (when
;;  (search-forward (car (all-completions pattern completions)))
;;  (forward-word -1)
;;  (delete-other-windows)
;;  (word-at-point))

(provide 'init-python)
