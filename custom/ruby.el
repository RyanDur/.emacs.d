;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(add-to-list 'load-path "~/.emacs.d/modes/Enhanced-Ruby-Mode") ; must be added after any path containing old ruby-mode
;;(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
;;(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
;;(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
;;(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
;;(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))

;;(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; optional

;;(setq enh-ruby-program "/Users/ryandurling/.rvm/rubies/ruby-2.1.2/bin/ruby") ;; so that still works if ruby points to ruby1.8
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Files with the following extensions should open in ruby-mode
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(require 'ruby-mode)
(require 'inf-ruby)

;; When folding, take these delimiters into consideration
(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(class\\|def\\|do\\|if\\)" "\\(end\\)" "#"
o              (lambda (arg) (ruby-end-of-block)) nil))

;; RVM support
;;(require 'rvm)
;;(rvm-use-default)

;; Cucumber
;;(require 'feature-mode)
;;(setq feature-use-rvm t) ;; Tell cucumber to use RVM
;;(setq feature-cucumber-command "cucumber {options} {feature}")
;; .feature files should open in feature-mode
;;(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; Rspec
(require 'rspec-mode)
;; I want rspec instead of rake spec
(setq rspec-use-rake-when-possible nil)
;; Scroll to the first test failure
(setq compilation-scroll-output 'first-error)

;; Projectile mode
(require 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; Prevent emacs from adding the encoding line at the top of the file
(setq ruby-insert-encoding-magic-comment nil)

;; Functions to help with refactoring
(require 'ruby-refactor)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
;; Easily toggle ruby's hash syntax
(require 'ruby-hash-syntax)
;; Ruby rdoc helpers mostly
(require 'ruby-additional)
;; Helpers to deal with strings and symbols
(require 'ruby-tools)
;; Support for YARD
(require 'yard-mode)
(add-hook 'ruby-mode-hook 'yard-mode)
;; Support for running rspec tests
(require 'rspec-mode)

;; Turn on eldoc in ruby files to display info about the
;; method or variable at point
(add-hook 'ruby-mode-hook 'eldoc-mode)
;; Switch the compilation buffer mode with C-x C-q (useful
;; when interacting with a debugger)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(add-hook 'ruby-mode-hook
          (lambda ()
            (hs-minor-mode 1) ;; Enables folding
            (modify-syntax-entry ?: "."))) ;; Adds ":" to the word definition

;; Start projectile-rails
;;(add-hook 'projectile-mode-hook 'projectile-rails-on)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
