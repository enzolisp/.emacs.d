;;; -*- lexical-binding: t -*-

;; enable packages from melpa page
(require 'org)
;;(find-file (concat user-emacs-directory "config.org"))
;;(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(let ((config-el (expand-file-name "~/.emacs.d/config.el")))
  (unless (file-exists-p config-el)
    (org-babel-tangle-file (expand-file-name "~/.emacs.d/config.org")))
  (load config-el))
