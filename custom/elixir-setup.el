(setq alchemist-hooks-test-on-save t)
(setq alchemist-test-display-compilation-output t)
(setq alchemist-hooks-compile-on-save t)
(setq alchemist-goto-elixir-source-dir "/usr/local/Cellar/elixir/1.4.5/lib/elixir/ebin/Elixir")
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

(require 'smartparens)
(sp-with-modes '(elixir-mode)
  (sp-local-pair "fn" "end"
                 :when '(("SPC" "RET"))
                 :actions '(insert navigate))
  (sp-local-pair "do" "end"
                 :when '(("SPC" "RET"))
                 :post-handlers '(sp-ruby-def-post-handler)
                 :actions '(insert navigate)))

(defun custom-elixir-mode-hook ()
  (define-key elixir-mode-map (kbd "C-c t") 'alchemist-goto-definition-at-point)
  (define-key elixir-mode-map (kbd "C-c f") 'alchemist-goto-jump-back))

(add-hook 'elixir-mode-hook 'alchemist-mode)
(add-hook 'elixir-mode-hook 'smartparens-mode)
(add-hook 'elixir-mode-hook 'company-mode)
(add-hook 'elixir-mode-hook 'custom-elixir-mode-hook)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-hook 'alchemist-mode-hook                                                ;;
;;           (lambda ()                                                          ;;
;;             (add-hook 'after-save-hook 'alchemist-mix-test 'make-it-local)))  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
