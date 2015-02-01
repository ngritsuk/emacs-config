(set-language-environment "UTF-8")

(set-input-method "russian-computer")
(setq x-select-enable-clipboard t)

(setq x-select-request-type 'UTF8_STRING)

;; Prevent the startup message
(setq inhibit-startup-message t)

;; No toolbar
(tool-bar-mode 0)

;; No menubar
(menu-bar-mode 0)


;;Disable eldoc-mode by default
(eldoc-mode 0)

;; No scrollbar
(scroll-bar-mode 0)
(line-number-mode 0)

(cua-mode)

;; Scrolling
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position 't)
(setq scroll-margin 25)


;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
      '(lambda ()
         (let ((buffer "*Completions*"))
           (and (get-buffer buffer)
                (kill-buffer buffer)))))



;; type "y"/"n" instead of "yes"/"no"
(fset 'yes-or-no-p 'y-or-n-p)

;; normal pasting from X applications
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; all operations that copy some text to x selection will do so
;; for clipboard too
(setq x-select-enable-clipboard t)

;; replace tabs with spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default tab-stop-list (list 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

;; hide cursor in non-selected windows
(set-default 'cursor-in-non-selected-windows nil)

;; make cursor line
(setq-default cursor-type 'bar) 

(add-to-list 'load-path "~/.emacs.d/color-theme")

(defun toggle-fullscreen (&optional f)
      (interactive)
      (let ((current-value (frame-parameter nil 'fullscreen)))
           (set-frame-parameter nil 'fullscreen
                                (if (equal 'fullboth current-value)
                                    (if (boundp 'old-fullscreen) old-fullscreen nil)
                                    (progn (setq old-fullscreen current-value)
                                           'fullboth)))))


;;(toggle-fullscreen)

(require 'color-theme)

(load (concat config-dir "~/.emacs.d/color-theme/dark-text.el"))
(dark-text-theme)


(custom-set-variables
 '(require-final-newline t)
 )

(show-paren-mode t)
(global-visual-line-mode t)
(eldoc-mode nil)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; default major mode is text-mode
(setq default-major-mode 'text-mode)

;;========================= ido mode only
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere 1)
(setq ido-use-faces nil)
;;========================== flx-ido mode 
(add-to-list 'load-path "~/.emacs.d/modes/flx/")
(add-to-list 'load-path "~/.emacs.d/modes/flx-ido/")

(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
               "*Messages*" "Async Shell Command" "fsm-debug"))


;; retitle emacs window
(defun frame-retitle (title)
  (modify-frame-parameters nil
                           (list (cons 'name
                                       title))))

;; set a beautiful title bar
(setq frame-title-format
      '("%S: " (buffer-file-name
                "%f"
                (dired-directory dired-directory "%b"))))

(desktop-save-mode 1)
(custom-set-variables
 '(desktop-restore-eager 10))

(setq-default save-place t)
(savehist-mode 1)


(set-face-background 'mode-line "#222")
(set-face-foreground 'mode-line "#C2C2C2")

(set-face-background 'menu "#222")
(set-face-foreground 'menu "#C2C2C2")

;; Makes *scratch* empty.
;;(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
;;(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")
(kill-buffer "*Quail Completions*")

;;; emacs-rc-common ends here
