;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).

;;设置英文字体
(setq xyu-font (font-spec :family "Source Code Pro" :size 15)
      xyu-big-font (font-spec :family "Source Code Pro" :size 30)
      xyu-variable-pitch-font (font-spec :family "Source Code Variable" :size 15)
      xyu-unicode-font (font-spec :family "JuliaMono")
      xyu-serif-font (font-spec :family "TeX Gyre Cursor")
      )
;;设置中文字体
(if (display-graphic-p)
    (dolist (charset '(kana han cjk-misc bopomofo gb18030))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "Source Han Mono" :size 14))))
;;设置行高
;(add-hook 'org-mode-hook
;(lambda()
;(setq-local line-spacing 0.45))
(provide 'init-local)
