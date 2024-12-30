;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).
;;自动换行

;; theme
(require 'ef-themes)
(load-theme 'ef-cyprus t)

;; 设置字体
(set-face-attribute 'default nil :height 160)

;; 设置org-mode
(setq org-directory "~/1-NOTES/XYU_MIND_NOTES/1-GTD")
(setq org-default-notes-file "~/1-NOTES/XYU_MIND_NOTES/1-GTD/inbox.org")

;;; 设置org-capture快捷键为C-c c
(global-set-key (kbd "C-c c") 'org-capture)

;;; Capture templates for: TODO tasks, appointments,  meetings, and habits
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/1-NOTES/XYU_MIND_NOTES/1-GTD/inbox.org")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file "~/1-NOTES/XYU_MIND_NOTES/1-GTD/inbox.org")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("m" "Meeting" entry (file "~/1-NOTES/XYU_MIND_NOTES/1-GTD/inbox.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/1-NOTES/XYU_MIND_NOTES/1-GTD/inbox.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))

(provide 'init-local)

;;
