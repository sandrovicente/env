"
package-list-packages

  helm               2.9.6         installed             Helm is an Emacs incremental and narrowing framework
  helm-projectile    0.14.0        installed             Helm integration for Projectile
  ido-better-flex    0.2           installed             A better flex (fuzzy) algorithm for Ido.
  magit              20171214.432  installed             A Git porcelain inside Emacs.
  projectile         0.14.0        installed             Manage and navigate projects in Emacs easily
  use-package        20171210.2136 installed             A configuration macro for simplifying your .emacs
"

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(defun git-grep (regexp)
  (interactive "sSearch in git repo: ")
  (grep-find (format "GIT_PAGER='' git grep -nH --no-color \"%s\" -- $(git rev-parse --show-toplevel)" regexp)))

(defun git-grep-w (regexp &optional word ext)
  (interactive "sSearch in git repo:
sWord
sExt")
  (let ((grep-str (format "GIT_PAGER='' git grep -nH \"%s\" " regexp)))
    (message ">>> %s" grep-str)
    (grep-find (grep-str))))
  

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
