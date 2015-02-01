(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(setq yas/root-directory "~/.emacs.d/yasnippet/snippets")
(setq yas/prompt-functions '(yas/ido-prompt))

(yas/load-directory yas/root-directory)

