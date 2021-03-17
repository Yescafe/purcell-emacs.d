;;; init-html.el --- Editing HTML -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Requirements
;; fancy battery supports
(require-package 'fancy-battery)
(setq fancy-battery-show-percentage t)
(fancy-battery-mode)

;; nyan mode supports
(require-package 'nyan-mode)
;; t to have it animated, nil for a static version
(setq nyan-animate-nyancat t)
;; `t' to make the trail wavy
(setq nyan-wavy-trail t)
;; minimum width of the window, below which Nyan Mode will be disabled.
(setq nyan-minimum-window-width 60)
;; length of nyan-mode bar, in 8px-wide units
(setq nyan-bar-length 10)
(nyan-mode)

;; Display time on mode line
(setq display-time-string-forms
      '(dayname " " month "/" day " " 24-hours ":" minutes " "))
(display-time-mode 1)

;; Use spaceline
(require-package 'spaceline)

;; Set spaceline theme (*spacemacs*/*emacs*)
(spaceline-spacemacs-theme)

;; Segments toggle
(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
(spaceline-toggle-minor-modes-off)
(spaceline-toggle-evil-state-on)
(spaceline-toggle-flycheck-error-on)
(spaceline-toggle-flycheck-warning-on)
(spaceline-toggle-flycheck-info-on)
(spaceline-toggle-version-control-on)
(spaceline-toggle-line-column-on)
(spaceline-toggle-battery-on)
(spaceline-toggle-input-method-on)
(spaceline-toggle-buffer-size-off)
;;(spaceline-toggle-buffer-position-off)


(provide 'init-modeline)
;;; init-modeline.el ends here
