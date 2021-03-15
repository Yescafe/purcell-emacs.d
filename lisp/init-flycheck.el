;;; init-flycheck.el --- Configure Flycheck global behaviour -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'flycheck)
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list)

  (when (maybe-require-package 'flycheck-color-mode-line)
    (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)))

;; C standard
(add-hook 'c-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c17")))

;; C++ standard
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++17")))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
