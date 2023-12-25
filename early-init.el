;;; early-init.el --- Emacs 27+ pre-initialisation config

;;; Commentary:

;; Emacs 27+ loads this file before (normally) calling
;; `package-initialize'.  We use this file to suppress that automatic
;; behaviour so that startup is consistent across Emacs versions.

;;; Code:

(setq package-enable-at-startup nil)
;;设置默认窗口的尺寸
(setq default-frame-alist '((height . 80) (width . 200)))
;; Inhibit resizing frame，防止闪烁
(setq frame-inhibit-implied-resize t)

;; So we can detect this having been loaded
(provide 'early-init)

;;; early-init.el ends here
