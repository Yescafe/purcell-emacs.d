;;; init-term.el --- Emacs built-in term config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; refs https://laptrinhx.com/customizable-256-colors-for-emacs-term-and-ansi-term-3643817902/ thanx

;; requirements
(require-package 'eterm-256color)

;; ansi-color ---> eterm-256color
(add-hook 'term-mode-hook #'eterm-256color-mode)

;; disable line number display in ansi-term
(add-hook 'term-mode-hook
          (lambda ()
            (display-line-numbers-mode 0)))


;; set term global key
(global-set-key (kbd "C-c t") 'ansi-term)


;; refs https://emacs.stackexchange.com/questions/48472/how-to-make-m-x-ansi-term-behave-like-m-x-shell-opening-in-new-window
;; Open ansi-term/zsh on the righter buffer

;; Support window mode for zsh
(defun ns/my-term-p (name _action)
  "Determine whether NAME names a `term-mode' buffer."
  (with-current-buffer name
    (derived-mode-p #'term-mode)))

;; Open zsh directly
(defun zsh ()
  (interactive)
  (let ((switch-to-buffer-obey-display-actions t))
    (ansi-term "zsh")))

(add-to-list 'display-buffer-alist '(ns/my-term-p () (inhibit-same-window . t)))

;; Set zsh key binding
(global-set-key (kbd "C-c t") 'zsh)


(provide 'init-term)
;;; init-term.el ends here
