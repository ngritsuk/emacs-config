(add-to-list 'load-path "~/.emacs.d/modes/emacs-jabber")
(require 'jabber)

(setq jabber-account-list
      '(("<JID>" 
         (:password . "<pass>")
         (:network-server . "talk.google.com")
         (:connection-type . ssl))
))

(setq fsm-debug nil) 

(global-set-key (kbd "C-c j") 'jabber-switch-to-roster-buffer)
(global-set-key (kbd "C-c a") 'jabber-connect-all)
 (setq 
  special-display-regexps 
  '(("jabber-chat" 
      (width . 250)
     (scroll-bar-width . 16)
     (height . 15)
     (tool-bar-lines . 0)
     (menu-bar-lines 0)
     (left . 80))))

(custom-set-variables
 '(jabber-chat-prompt-local ((t (:foreground "yellow" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "darkgreen" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "gray" :slant normal :weight bold))))
 '(jabber-roster-user-online ((t (:foreground "DeepSkyBlue" :slant normal :weight bold))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight bold :height 1.0 :width expanded))))
 '(jabber-auto-reconnect t)
 '(jabber-avatar-verbose nil)
 '(jabber-vcard-avatars-retrieve nil)
 '(jabber-chat-buffer-format "%n")
 '(jabber-history-enabled t)
 '(jabber-history-size-limit 1024000000)
 '(jabber-mode-line-mode t)
 '(jabber-roster-buffer "JABBER ROSTER")
 '(jabber-roster-line-format "%c %-24.24n")
 '(jabber-show-resources nil)
 '(jabber-roster-show-title nil)
 '(jabber-roster-show-bindings nil)
 '(jabber-show-offline-contacts nil)

 )

(custom-set-faces
 '(jabber-roster-user-online ((t (:foreground "deep sky blue" :slant normal :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "gray" :slant normal :weight bold))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight bold :height 1.0 :width expanded))))
 '(jabber-chat-prompt-system ((t (:foreground "darkgreen" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "deep sky blue" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "darkgreen" :weight bold))))
 '(jabber-title-medium ((t nil)))
 )

(setq jabber-chat-local-prompt-format "[%t] [me]> ")

