(add-to-list 'load-path "~/.emacs.d/modes/tabbar")
(require 'tabbar)

;;(add-to-list 'load-path "~/.emacs.d/modes/tabbar-ruler")
;;(require 'tabbar-ruler)

;; Source: https://gist.github.com/3demax/1264635
 
;; Tabbar
(require 'tabbar)
;; Tabbar settings
(set-face-attribute
'tabbar-default nil
:background "gray20"
:foreground "gray20"
:box '(:line-width 1 :color "gray20" :style nil))

(set-face-attribute
'tabbar-unselected nil
:background "DimGrey"
:foreground "grey"
:box '(:line-width 3 :color "DimGrey" :style nil))

(set-face-attribute
'tabbar-selected nil
:background "#222 "
:foreground "white"
:box '(:line-width 3 :color "#222" :style nil))

(set-face-attribute
'tabbar-highlight nil
:background "white"
:foreground "black"
:box '(:line-width 3 :color "white" :style nil))

(set-face-attribute
'tabbar-button nil
:box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
'tabbar-separator nil
:background "gray20"
:height 0.3)

(set-face-attribute
'tabbar-modified nil
:background "#222 "
:foreground "yellow"
:box '(:line-width 3 :color "#222" :style nil))
 
;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
(custom-set-variables
'(tabbar-separator (quote (0.7))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
"Return a label for TAB.
That is, a string used to represent it on the tab bar."
(let ((label (if tabbar--buffer-show-groups
(format "[%s] " (tabbar-tab-tabset tab))
(format "%s  " (tabbar-tab-value tab)))))
;; Unless the tab bar auto scrolls to keep the selected tab
;; visible, shorten the tab label to keep as many tabs as possible
;; in the visible area of the tab bar.
(if tabbar-auto-scroll-flag
label
(tabbar-shorten
label (max 1 (/ (window-width)
(length (tabbar-view
(tabbar-current-tabset)))))))))
(setq tabbar-separator (quote (0.7)))

(setq
 tabbar-scroll-left-help-function nil ;don't show help information
 tabbar-scroll-right-help-function nil
 tabbar-help-on-tab-function nil
 tabbar-home-help-function nil
 tabbar-buffer-home-button (quote (("") "")) ;don't show tabbar button
 tabbar-scroll-left-button (quote (("") ""))
 tabbar-scroll-right-button (quote (("") "")))
 
;;(global-set-key (kbd "C-<left>") 'tabbar-backward-tab)
;;(global-set-key (kbd "C-<right>") 'tabbar-forward-tab)

;;(global-set-key (kbd "C-<up>") 'tabbar-backward-group)
;;(global-set-key (kbd "C-<down>") 'tabbar-forward-group) 

;;(tabbar-mode 1)
