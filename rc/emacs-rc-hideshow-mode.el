(add-to-list 'load-path "~/.emacs.d/modes/hideshowvis")
(require 'hideshowvis)
;;(autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")
(autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")
(autoload 'hideshowvis-minor-mode
   "hideshowvis"
   "Will indicate regions foldable with hideshow in the fringe."
   'interactive)


(dolist (hook (list 'emacs-lisp-mode-hook
                    'c++-mode-hook
                    'python-mode-hook))
  (add-hook hook 'hideshowvis-enable))


(hideshowvis-symbols)

(global-set-key (kbd "C-h") 'hs-toggle-hiding)

(custom-set-faces
 '(hs-face ((t (:background "#222" :box (:line-width 1 :color "#222"))))))
