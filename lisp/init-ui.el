;;; init-ui.el --- Customized UI/GUI -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Set font face
(set-frame-font "CaskaydiaCove Nerd Font-14")
(setq default-frame-alist '((font . "CaskaydiaCove Nerd Font-14")))

;; Set default window/frame size maximaized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-hook 'before-make-frame-hook
          #'(lambda ()
              (add-to-list 'initial-frame-alist '(fullscreen . maximized))
              (add-to-list 'default-frame-alist '(fullscreen . maximized))))


;; Use relative line number
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)


;; Fullscreen shortcut
(global-set-key (kbd "<f12>") #'toggle-frame-fullscreen)


(provide 'init-ui)
;;; init-face.el ends here
