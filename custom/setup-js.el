(add-to-list 'auto-mode-alist '("\\.js$" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))


(require 'flycheck)                                  ;;
;;
(add-hook 'js2-jsx-mode-hook                         ;;
          (lambda () (flycheck-mode t)))             ;;
;;
;; disable jshint since we prefer eslint checking    ;;
(setq-default flycheck-disabled-checkers             ;;
              (append flycheck-disabled-checkers     ;;
                      '(javascript-jshint)))         ;;
;;
;; disable json-jsonlist checking for json files     ;;
(setq-default flycheck-disabled-checkers             ;;
              (append flycheck-disabled-checkers     ;;
                      '(json-jsonlist)))             ;;
;;
;; use eslint with web-mode for js files             ;;
(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode) ;;
;;
;;
(when (memq window-system '(mac ns))                 ;;
  (exec-path-from-shell-initialize))                 ;;

(add-hook 'js2-jsx-mode-hook 'ac-js2-mode)
(add-hook 'js2-jsx-mode-hook #'js2-refactor-mode)

;;(load "~/.emacs.d/elpa/jsfmt-20150727.1525")
(add-hook 'before-save-hook 'jsfmt-before-save)

(defun align-to-equals (begin end)
  "Align region to equal signs"
  (interactive "r")
  (align-regexp begin end
                (rx (group (zero-or-more (syntax whitespace))) "=") 1 1))

(defun align-to-from (begin end)
  "Align region to from"
  (interactive "r")
  (align-regexp begin end
                (rx (group (zero-or-more (syntax whitespace))) "from") 1 1))
