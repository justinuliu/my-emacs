
(require 'cc-mode)
(require 'semantic)

;; if you want to enable support for gnu global
(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode))

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-stickyfunc-mode 1)
(global-semantic-idle-summary-mode 1)

(semantic-mode 1)

;; Enable EDE only in C/C++
(require 'ede)
(global-ede-mode)

;;----------------------------------------------------------------------------
;; Init xcscope
;;----------------------------------------------------------------------------
(require-package 'xcscope)

;;----------------------------------------------------------------------------
;; Init company
;;----------------------------------------------------------------------------
(require-package 'company)
(require-package 'company-c-headers)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-clang company-backends)
(delete 'company-semantic company-backends)
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)

;; company-c-headers
(add-to-list 'company-backends 'company-c-headers)

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;;----------------------------------------------------------------------------
;; Init coding style
;;----------------------------------------------------------------------------
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,”Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq
 c-default-style "linux" ;; set style to "linux"
 )

(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)
;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;;----------------------------------------------------------------------------
;; Init compilation
;;----------------------------------------------------------------------------
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;;----------------------------------------------------------------------------
;; Init GDB
;;----------------------------------------------------------------------------
;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;;----------------------------------------------------------------------------
;; Init clean aindent mode
;;----------------------------------------------------------------------------
(require-package 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;;----------------------------------------------------------------------------
;; Init dtrt indent
;;----------------------------------------------------------------------------
(require-package 'dtrt-indent)
(dtrt-indent-mode 1)

;;----------------------------------------------------------------------------
;; Init ws butler
;;----------------------------------------------------------------------------
(require-package 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

;;----------------------------------------------------------------------------
;; Init yasnippet
;;----------------------------------------------------------------------------
(require-package 'yasnippet)
(yas-global-mode 1)

;;----------------------------------------------------------------------------
;; Init smartparens
;;----------------------------------------------------------------------------
;; (require-package 'smartparens)
;; (show-smartparens-global-mode +1)
;; (smartparens-global-mode 1)

;;----------------------------------------------------------------------------
;; Init projectile
;;----------------------------------------------------------------------------
(require-package 'projectile)
(require-package 'helm-projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

(provide 'init-cc)
