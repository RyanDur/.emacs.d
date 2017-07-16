(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170124.1845/")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
