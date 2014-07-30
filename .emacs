
(add-to-list 'load-path "~/.emacs.d/site-lisp/python-mode")
(setq py-install-directory "~/.emacs.d/site-lisp/pyhton-mode")
(require 'python-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((c-mode . ""))))
 '(c-max-one-liner-length 132)
 '(c-syntactic-indentation t)
 '(tramp-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; make buffer switch command auto suggestions, also for find file command
(ido-mode 1)

;; display any item that contains chars types
(setq ido-enable-flex-matching t)

;; make use space instead of TABS
(setq-default indent-tabs-mode nil)

;; set default TAB width to 2 chars
(setq-default tab-width 2)

;; set current buffer's tab char's display width to 2
(setq tab-width 2)

;; make TAB key indent code
;;(setq-default tab-always-indent 'complete)

;; Indent on return 
(setq-default electric-indent-mode 1)


(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; autopair
(add-to-list 'load-path "~/.emacs.d/site-lisp/autopair")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;; auto-complete-c-headers
;;(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-c-headers")
;;(require 'auto-complete-c-headers)


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )



;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen


(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"))

;; macro to allign c code along with = 
(fset 'mk_align_eq
   "\C-[xalign\C-i-re\C-i\C-m=\C-m")
(global-set-key "\M-=" 'mk_align_eq) ; assign keyboard binding for macro


(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(put 'narrow-to-region 'disabled nil)


;(require 'guide-key)
;(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
;(guide-key-mode 1) ; Enable guide-key-mode


;; setting to disable ARROW keys 
(global-unset-key [left])
(global-unset-key [right])
(global-unset-key [up])
(global-unset-key [down])




