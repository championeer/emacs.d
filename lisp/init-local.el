;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).
;;自动恢复模式
(global-auto-revert-mode t)
;;设置全局键绑定
(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region) ;对应Windows上面的Ctrol-x 剪切

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
