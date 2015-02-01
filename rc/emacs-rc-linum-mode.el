(add-to-list 'load-path "~/.emacs.d/modes/nlinum/")
(require 'nlinum)

;; permanent nlinum-mode
(defun nlinum-mode-find-file-hook ()
  (nlinum-mode t))
(add-hook 'find-file-hook 'nlinum-mode-find-file-hook)

(setq nlinum-format "%3i")
