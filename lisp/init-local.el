;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).
;;自动换行

;; theme
(require 'ef-themes)
(load-theme 'ef-cyprus t)

;; 设置字体
(set-face-attribute 'default nil :height 160)

(provide 'init-local)

;;
