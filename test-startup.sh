#!/bin/sh -e
${EMACS:=emacs} -nw --batch \
                --eval '(let ((debug-on-error t)
                              (user-emacs-directory default-directory)
                              (user-init-file (expand-file-name "init.el"))
                              (load-path (delq default-directory load-path)))
                           (load-file user-init-file)
                           (run-hooks (quote after-init-hook)))'
echo "Startup successful"