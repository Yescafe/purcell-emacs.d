;;; init-face.el --- Customized face and UI/GUI -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Get Spacemacs theme
(require-package 'spacemacs-theme)

;; Customize theme
(setq-default custom-enabled-themes '(spacemacs-dark))

;;------------------------------------------------------------------------------
;; Toggle between spacemacs light and dark
;;------------------------------------------------------------------------------
(defun slight ()
  "Activate spacemacs light color theme."
  (interactive)
  (setq custom-enabled-themes '(spacemacs-light))
  (reapply-themes))

(defun sdark ()
  "Activate spacemacs dark color theme."
  (interactive)
  (setq custom-enabled-themes '(spacemacs-dark))
  (reapply-themes))

;; Set font face
(set-frame-font "-*-FiraCode Nerd Font Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")
(setq default-frame-alist '((font . "-*-FiraCode Nerd Font Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")))


(provide 'init-face)
;;; init-face.el ends here
