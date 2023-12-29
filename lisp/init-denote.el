;; denote配置
(use-package denote
  :bind
  (("C-c n n" . denote)
   ("C-c n i" . denote-link-or-create)
   ("C-c n I" . denote-link)
   ("C-c n b" . denote-link-backlinks)
   ("C-c n a" . denote-add-front-matter)
   ("C-c n r" . denote-rename-file)
   ("C-c n R" . denote-rename-file-using-front-matter)
   )
  )

(setq denote-directory (expand-file-name "~/Dropbox/Org-Notes/NOTES/")
      denote-known-keywords '("dev" "read" "report" "cslp")
      denote-infer-keywords t
      denote-sort-keywords t
      denote-allow-multi-word-keywords t
      denote-date-prompt-use-org-read-date t
      denote-link-fontify-backlinks t
      denote-front-matter-date-format 'org-timestamp
      denote-prompts '(title keywords))

;; 在work目录下创建标签为work的笔记
(defun my-work-notes ()
  "Create an entry tagged 'journal', while prompting for a title."
  (interactive)
  (denote
   (denote--title-prompt)
   '("work") 'denote-file-type '"./work"))
