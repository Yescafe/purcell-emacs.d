;;; init-term.el --- Emacs built-in term config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; thanks https://laptrinhx.com/customizable-256-colors-for-emacs-term-and-ansi-term-3643817902/

(require-package 'eterm-256color)

(add-hook 'term-mode-hook #'eterm-256color-mode)
(add-hook 'term-mode-hook
          (lambda ()
            (display-line-numbers-mode 0)))

(global-set-key (kbd "C-c t") 'ansi-term)


(provide 'init-term)
;;; init-term.el ends here
