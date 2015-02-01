(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

;; (defun my-python-hook ()
;;   (local-set-key [return] 'newline-and-indent)
;;   )

;;(add-hook 'python-mode-hook 'my-python-hook)

(defun pony-mode-bindings-hook()
  (local-set-key (kbd "C-c r") 'pony-restart-server)
  (local-set-key (kbd "C-c s") 'pony-syncdb)
  (local-set-key (kbd "C-c k") 'pony-stopserver)
  )
(add-hook 'python-mode-hook 'pony-mode-bindings-hook)

(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
