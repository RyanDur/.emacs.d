;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; ;; Author: David Röthlisberger                                                                                   ;;
;; ;; Title: technomancy / emacs-starter-kit                                                                        ;;
;; ;; From: https://github.com/technomancy/emacs-starter-kit/blob/v2/starter-kit-defuns.el                          ;;
;; (defun esk-untabify-buffer ()                                                                                    ;;
;;   (interactive)                                                                                                  ;;
;;   (untabify (point-min) (point-max)))                                                                            ;;
;;                                                                                                                  ;;
;; (defun esk-indent-buffer ()                                                                                      ;;
;;   (interactive)                                                                                                  ;;
;;   (indent-region (point-min) (point-max)))                                                                       ;;
;;                                                                                                                  ;;
;; (defun esk-cleanup-buffer ()                                                                                     ;;
;;   "Perform a bunch of operations on the whitespace content of a buffer."                                         ;;
;;   (interactive)                                                                                                  ;;
;;   (esk-indent-buffer)                                                                                            ;;
;;   (esk-untabify-buffer)                                                                                          ;;
;;   (delete-trailing-whitespace))                                                                                  ;;
;;                                                                                                                  ;;
;; (global-set-key (kbd "C-c n") 'esk-cleanup-buffer)                                                               ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "C-c n") 'indent-buffer)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-hook 'yaml-mode-hook
          (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
