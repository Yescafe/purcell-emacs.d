;;; init-osx-keys.el --- Configure keys specific to MacOS -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when *is-a-mac*
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta)
  ;; Make mouse wheel / trackpad scrolling less jerky
  (setq mouse-wheel-scroll-amount '(1
                                    ((shift) . 5)
                                    ((control))))
  (dolist (multiple '("" "double-" "triple-"))
    (dolist (direction '("right" "left"))
      (global-set-key (read-kbd-macro (concat "<" multiple "wheel-" direction ">")) 'ignore)))
  (global-set-key (kbd "S-`") 'ns-next-frame)
  (global-set-key (kbd "S-h") 'ns-do-hide-emacs)
  (global-set-key (kbd "S-˙") 'ns-do-hide-others)
  (with-eval-after-load 'nxml-mode
    (define-key nxml-mode-map (kbd "S-h") nil))
  (global-set-key (kbd "S-ˍ") 'ns-do-hide-others) ;; what describe-key reports for cmd-option-h

  (global-set-key (kbd "s-a") 'mark-whole-buffer)
  (global-set-key (kbd "s-s") 'save-buffer)
  (global-set-key (kbd "s-v") 'yank)
  (global-set-key (kbd "s-z") 'undo-fu-only-undo)
  (global-set-key (kbd "s-Z") 'undo-fu-only-redo)
  )


(provide 'init-osx-keys)
;;; init-osx-keys.el ends here
