;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/elpa/dash-20141220.1452")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
;;(add-to-list 'load-path "~/.emacs.d/elpa/scala-outline-popup-20141215.953")

(require 'popup)
(define-key popup-isearch-keymap (kbd "C-e") 'popup-isearch-cancel)

;;(require 'scala-outline-popup)
;;(setq scala-outline-popup-select 'closest)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
