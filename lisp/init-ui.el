;;; init-ui.el --- Customized UI/GUI -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Get themes
;; spacemacs
(require-package 'spacemacs-theme)
;; dracula
(require-package 'dracula-theme)

;; Customize theme
(setq-default custom-enabled-themes '(sanityinc-tomorrow-bright))

;;------------------------------------------------------------------------------
;; Toggle themes
;;------------------------------------------------------------------------------
(defun theme-spacemacs-light ()
  (interactive)
  (setq custom-enabled-themes '(spacemacs-light))
  (reapply-themes))

(defun theme-spacemacs-dark ()
  (interactive)
  (setq custom-enabled-themes '(spacemacs-dark))
  (reapply-themes))

(defun theme-dracula ()
  (interactive)
  (setq custom-enabled-themes '(dracula))
  (reapply-themes))


;; Set font face
(set-frame-font "Iosevka SS05-14")
(setq default-frame-alist '((font . "Iosevka SS05-14")))


;; Set default window size
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-hook 'before-make-frame-hook
          #'(lambda ()
              (add-to-list 'initial-frame-alist '(fullscreen . maximized))
              (add-to-list 'default-frame-alist '(fullscreen . maximized))))


;; Display time on status bar
(display-time-mode 1)
(setq display-time-string-forms
      '(dayname " " day " " monthname " " 24-hours ":" minutes " "))


;; Display battery percentage
(display-battery-mode 1)


(provide 'init-ui)
;;; init-face.el ends here
