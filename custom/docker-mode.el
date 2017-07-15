(add-to-list 'load-path "~/.emacs.d/elpa/dockerfile-mode-0.1/")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
