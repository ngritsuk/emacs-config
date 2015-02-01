(add-to-list 'load-path "~/.emacs.d/modes/pymacs")
(require 'pymacs)

(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
