"
*** installed   

X back-button        0.6.6         installed             Visual navigation through mark rings
  helm               2.9.6         installed             Helm is an Emacs incremental and narrowing framework
  ido-better-flex    0.2           installed             A better flex (fuzzy) algorithm for Ido.
  magit              20171214.432  installed             A Git porcelain inside Emacs.
  use-package        20171210.2136 installed             A configuration macro for simplifying your .emacs
  projectile
  helm-projectile
"

"
(require 'back-button)
 (back-button-mode 1)
"

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(defun git-grep (regexp)
  (interactive "sSearch in git repo: ")
  (grep (format "GIT_PAGER='' git grep -nH --no-color -i \"%s\" -- $(git rev-parse --show-toplevel)" regexp)))

(global-set-key (kbd "C-x ?") 'git-grep)


;; git --no-pager grep -n -e <pattern1> --and -e <pattern2>
;; 

;; helm 
(global-set-key (kbd "C-s-f") 'helm-find-files)
(global-set-key (kbd "C-s-r") 'helm-recentf)
(global-set-key (kbd "C-s-b") 'helm-buffers-list)
(global-set-key (kbd "C-M-g") 'helm-grep-do-git-grep)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
