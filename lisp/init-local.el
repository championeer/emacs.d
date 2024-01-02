;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).
;;自动换行
(global-visual-line-mode 1)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
  (add-hook 'org-mode-hook 'turn-on-auto-fill)
;;自动恢复模式
(global-auto-revert-mode t)
(custom-set-variables
  '(auto-save-visited-mode t))
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

;; 设置窗口大小，仅仅在图形界面需要设置
(when (display-graphic-p)
  (let ((top    0)                                     ; 顶不留空
        (left   (/ (x-display-pixel-width) 10))        ; 左边空10%
        (height (round (* 0.8                          ; 窗体高度为0.8倍的显示高度
                          (/ (x-display-pixel-height)
                             (frame-char-height))))))
    (let ((width  (round (* 2.5 height))))             ; 窗体宽度为2.5倍高度
      (setq default-frame-alist nil)
      (add-to-list 'default-frame-alist (cons 'top top))
      (add-to-list 'default-frame-alist (cons 'left left))
      (add-to-list 'default-frame-alist (cons 'height height))
      (add-to-list 'default-frame-alist (cons 'width width)))))

;;beancount-mode设置
(add-to-list 'load-path "~/.emacs.d/elpa_local/beancount-mode/")
(require 'beancount)
(add-to-list 'auto-mode-alist '("\\.beancount\\'" . beancount-mode))
;; Automatically enable outline-mode.
(add-hook 'beancount-mode-hook #'outline-minor-mode)
;;----end-----

;;设置行高
                                        ;(add-hook 'org-mode-hook
                                        ;(lambda()
                                        ;(setq-local line-spacing 0.45))

;; 设置剪贴板历史长度300，默认为60
(setq kill-ring-max 200)

;; 在剪贴板里不存储重复内容
(setq kill-do-not-save-duplicates t)

;; 设置大文件阈值为100MB，默认10MB
(setq large-file-warning-threshold 100000000)

;;keycast
(require 'keycast)
(keycast-mode-line-mode)

(provide 'init-local)

;;
