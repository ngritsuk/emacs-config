;; yes and no
(fset 'yes-or-no-p 'y-or-n-p)

(custom-set-variables
 '(desktop-restore-eager 10)
 '(ecb-options-version "2.40")
 '(python-remove-cwd-from-path nil)
 '(require-final-newline t)
 '(tabbar-separator (quote (0.7)))
 )

(setq inhibit-splash-screen t)

(custom-set-faces
 '(hs-face ((t (:background "#222" :box (:line-width 1 :color "#222")))))
)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(ansi-color-for-comint-mode-on)

;; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; delete selection when typing
(delete-selection-mode t)

;; save last cursor position in file
(require 'saveplace)
(setq-default save-place t)

;; default input method
(setq default-input-method 'russian-computer)

;; don't use tabs for indent
(set-default 'indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; save history
(savehist-mode 1)

;; recent files mode
(require 'recentf)
(recentf-mode 1)

;; auto reloading of chanded files from disk
(auto-revert-mode 1)

(whitespace-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-restore-eager 10)
 '(ecb-options-version "2.40")
 '(erc-server "irc.bynets.org")
 '(jabber-auto-reconnect t)
 '(jabber-avatar-verbose nil)
 '(jabber-chat-buffer-format "%n")
 '(jabber-chat-prompt-local ((t (:foreground "yellow" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "darkgreen" :weight bold))))
 '(jabber-history-enabled t)
 '(jabber-history-size-limit 1024000000)
 '(jabber-mode-line-mode t)
 '(jabber-roster-buffer "JABBER ROSTER")
 '(jabber-roster-line-format "%c %-24.24n")
 '(jabber-roster-show-bindings nil)
 '(jabber-roster-show-title nil)
 '(jabber-roster-user-away ((t (:foreground "gray" :slant normal :weight bold))))
 '(jabber-roster-user-online
   ((t
     (:foreground "DeepSkyBlue" :slant normal :weight bold))))
 '(jabber-show-offline-contacts nil)
 '(jabber-show-resources nil)
 '(jabber-title-medium
   ((t
     (:inherit variable-pitch :weight bold :height 1.0 :width expanded))))
 '(jabber-vcard-avatars-retrieve nil)
 '(python-remove-cwd-from-path nil)
 '(require-final-newline t)
 '(tabbar-separator (quote (0.7))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hs-face ((t (:background "#222" :box (:line-width 1 :color "#222")))))
 '(jabber-chat-prompt-local ((t (:foreground "deep sky blue" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "darkgreen" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "gray" :slant normal :weight bold))))
 '(jabber-roster-user-online ((t (:foreground "DeepSkyBlue" :slant normal :weight bold))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight bold :height 1.0 :width expanded))))
)
