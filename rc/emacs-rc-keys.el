;; save file
(global-set-key [f2] 'save-buffer)
(global-set-key [f3] 'comment-or-uncomment-region)
(global-set-key [f4] 'write-file)
(global-set-key [f5] 'revert-buffer)


;;key bindings for microsoft multimedia ergonomic keyboard
(global-set-key [undo] 'save-buffer)
(global-set-key [redo] 'comment-or-uncomment-region)
(global-set-key (kbd "<SunOpen>") 'revert-buffer)
(global-set-key (kbd "<XF86Close>") 'write-file)

(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(global-set-key [f8] 'iwb)

(defun reload-init-file ()
  (interactive)
  ;; Fails on killing the Messages buffer, workaround:
  (get-buffer-create "*Messages*")
  (load-file "~/.emacs.d/init.el")
  )

;; comment or uncomment region
(global-set-key (kbd "C-c /") 'comment-or-uncomment-region)
;; killbuffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)
;; show/hide menu bar
(global-set-key (kbd "C-x b") 'toggle-menu-bar-mode-from-frame)

;; undo
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "C-b") 'ibuffer)

(global-set-key (kbd "C-o") 'ido-find-file)

(global-set-key (kbd "C-g") 'goto-line)

;;reload default init.el
(global-set-key (kbd "C-x i") 'reload-init-file)

(global-set-key (kbd "C-f") 'isearch-forward)

(global-set-key (kbd "<C-kp-add>") 'text-scale-increase)
(global-set-key (kbd "<C-kp-subtract>") 'text-scale-decrease)

;; find recent files
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-w") 'whitespace-mode)


;; switch between windows with Ctrl-left, Ctrl-right, Ctrl-Up, Ctrl-Down
(windmove-default-keybindings 'ctrl)
