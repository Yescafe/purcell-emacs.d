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


(provide 'init-term)
;;; init-term.el ends here
