
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (helm-projectile projectile use-package ido-better-flex helm magit rust-mode)))
 '(show-paren-mode t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :foundry "adobe" :family "courier")))))
(setq make-backup-files nil) ;; do not make backup files
;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq my-c-style
'((c-comment-only-line-offset . 0)
 (c-basic-offset . 4)
(c-cleanup-list . (scope-operator
   		empty-defun-braces
   		defun-close-semi))
 (c-offsets-alist . ((arglist-close . c-lineup-arglist)
   	 (substatement-open . 0)))))

(add-hook 'c-mode-common-hook
'(lambda ()
  (c-add-style "my-style" my-c-style t)))
(setq inhibit-startup-message t)
(column-number-mode t)

;Cause TAB characters to not be used in the file for compression. Only spaces are used.
(setq-default indent-tabs-mode nil)
(put 'erase-buffer 'disabled nil)
;(global-linum-mode t)

(global-set-key (kbd "M-3") "#")
(global-linum-mode)
(setq visible-bell 1)

;; Csharp for emacs
;;(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
;;(setq auto-mode-alist
;;  (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
   (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(defun my-csharp-mode-fn ()
  "function that runs when csharp-mode is initialized for a buffer."
  ;;...insert your code here...
  ;;...most commonly, your custom key bindings ...
)
(add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)
(add-to-list 'load-path "/Users/sandrovicente/work/tools/emacs-24.3/lisp/progmodes")
;;(require 'scala-mode2)

;; F# mode
(setq load-path (cons "~/.emacs.d/fsharp" load-path))
(setq auto-mode-alist (cons '("\\.fs[iylx]?$" . fsharp-mode) auto-mode-alist))
(autoload 'fsharp-mode "fsharp" "Major mode for editing F# code." t)
(autoload 'run-fsharp "inf-fsharp" "Run an inferior F# process." t)

;; Python
(global-set-key (kbd "C-c <") 'python-ident-shift-left)
(global-set-key (kbd "C-c >") 'python-ident-shift-right)

;; erlang
(setq load-path (cons  "/opt/local/lib/erlang/lib/tools-2.10/emacs"
load-path))
(setq erlang-root-dir "/opt/local/lib/erlang")
(setq exec-path (cons "/opt/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

(global-auto-revert-mode t) ;; keep buffers up-to-date

;; Display ido results vertically, rather than horizontally
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
    (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
    (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

(require 'ido)
(ido-mode t)

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)


(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(global-set-key (kbd "C-x <prior>") 'previous-buffer)
(global-set-key (kbd "C-x <next>") 'next-buffer)

(setq python-shift-indent 4)
(global-set-key (kbd "C->") 'python-indent-shift-right)
(global-set-key (kbd "C-<") 'python-indent-shift-left)

(add-hook 'python-mode-hook
          '(lambda () (eldoc-mode 1)
             ) t)

(setenv "PAGER" "cat")

;; directory load
(defun load-directory (dir)
  (let ((load-it (lambda (f)
           (load-file (concat (file-name-as-directory dir) f)))
         ))
(mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/my")

(global-set-key (kbd "C-M-<left>") 'backward-sexp)
(global-set-key (kbd "C-M-<right>") 'forward-sexp)
(global-set-key (kbd "C-M-<up>") 'backward-list)
(global-set-key (kbd "C-M-<down>") 'forward-list)
