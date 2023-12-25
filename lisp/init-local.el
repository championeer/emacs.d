;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).

;;设置英文字体
(setq xyu-font (font-spec :family "Source Code Pro" :size 15)
      xyu-big-font (font-spec :family "Source Code Pro" :size 30)
      xyu-variable-pitch-font (font-spec :family "Source Code Variable" :size 15)
      xyu-unicode-font (font-spec :family "JuliaMono")
      xyu-serif-font (font-spec :family "TeX Gyre Cursor")
      )

(provide 'init-local)
