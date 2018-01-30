
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(case-fold-search nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(font-use-system-font t)
 '(package-selected-packages (quote (use-package magit)))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
;;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :foundry "adobe" :family "courier")))))
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
;; Display settings
; default size and color options for all frames.
;(setq default-frame-alist
; '(
;	(width         	. 130)
;	(height        	. 50)
;  )
;)
;Cause TAB characters to not be used in the file for compression. Only spaces are used.
(setq-default indent-tabs-mode nil)
(put 'erase-buffer 'disabled nil)
(global-linum-mode t)

;; Csharp for emacs
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
  (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
(defun my-csharp-mode-fn ()
  "function that runs when csharp-mode is initialized for a buffer."
  ;;...insert your code here...
  ;;...most commonly, your custom key bindings ...
)
(add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)
; try to improve slow performance on windows.
(setq mouse-buffer-menu-mode-mult 40)
(set-face-attribute 'default nil :height 90)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "bitstream" :family "Courier 10 Pitch"))))
 )
(tool-bar-mode -1)


;(require 'package)
;(setq package-enable-at-startup nil)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;(package-initialize)

;(unless (package-installed-p 'use-package)
;  (package-refresh-contents)
;  (package-install 'use-package))

;(eval-when-compile
;  (require 'use-package))
;(require 'diminish)
;(require 'bind-key)
(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)


(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)