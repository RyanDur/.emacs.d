;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: djcb
;; Title: package management revisited
;; From: http://emacs-fu.blogspot.com/2011/11/package-management-revisited.html
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;;("melpa" . "http://melpa.org/packages/")

(require 'package)
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: flyingmachine
;; Title: init.el
;; From: https://github.com/flyingmachine/emacs-for-clojure/blob/master/init.el

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; With the most recent builds of Emacs, you can pin Alchemist to always use MELPA Stable
;; by adding this to your Emacs initialization
(add-to-list 'package-pinned-packages '(alchemist . "melpa-stable") t)

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(;; makes handling lisp expressions much, much easier
    ;; Cheatsheet: http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider

    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description
    ;; of ido
    ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    dash
    
    popup

    ;; project navigation
    projectile

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    tagedit

    ;; Elixir tooling integration for emacs
    ;; https://alchemist.readthedocs.io/en/latest/
    alchemist

    auto-complete

    dockerfile-mode

    go-mode
    
    go-autocomplete

    haskell-mode

    js2-mode

    inf-ruby

    ac-slime

    clojure-mode

    clojure-mode-extra-font-locking

    coffee-mode

    company

    emmet-mode

    ensime

    ;; THEMES
    deep-thought-theme
    color-theme-railscasts    
    color-theme
    clues-theme
    base16-theme
    gratuitous-dark-theme
    gruber-darker-theme
    heroku-theme
    ir-black-theme))

;; On OS X, an Emacs instance started from the graphical user
;; interface will have a different environment than a shell in a
;; terminal window, because OS X does not run a shell during the
;; login. Obviously this will lead to unexpected results when
;; calling external utilities like make from Emacs.
;; This library works around this problem by copying important
;; environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/custom")
(load "ui.el")
(load "mypopup.el")
(load "editing.el")
(load "elisp-editing.el")
(load "auto-complete.el")
(load "auto-indent.el")
(load "spellcheck.el")
(load "undo.el")
(load "haskell.el")
(load "web.el")
(load "ruby.el")
(load "setup-clojure.el")
(load "setup-js.el")
(load "setup-js.el")
(load "shell-integration.el")
(load "tree.el")
(load "docker-mode.el")
(load "elixir-setup.el")

;;(load "lisp.el")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-auto-revert-mode 1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("d725097d2547e9205ab6c8b034d6971c2f0fc64ae5f357b61b7de411ca3e7ab2" "b953823053c6372fafde04957ab6d482021cc3a0f4b279f2868180c3ca56ca59" "3328e7238e0f6d0a5e1793539dfe55c2685f24b6cdff099c9a0c185b71fbfff9" "75c0b1d2528f1bce72f53344939da57e290aa34bea79f3a1ee19d6808cb55149" "67b6ff0b4786c485ea606167da3b963a35ba37406017c4f50754dcd16230b75b" "6ebb2401451dc6d01cd761eef8fe24812a57793c5ccc427b600893fa1d767b1d" "3514fe07ecd0dc2f8b747706370c169b3d8053f825c009414e1a86eac8978327" "4cc014287035b11d1f8d45af1ff18f3509496a760650d16c7771ac9bdf16b1a6" "3f04f37604c5f5cc3c71bc1a4a604ed8be340d0f150946b25658e403ccbad6d2" "1dd2d01010a9ae1f54775abceb080e231b6f9c781c5282b25b8c4edd3f3a14e0" "1abda075ebacaa3795d675bb2be0a905322ac856f9c0c259da63f9ccfe1962ec" "0240d45644b370b0518e8407f5990a243c769fb0150a7e74297e6f7052a04a72" "37783713b151d949b0da66ff7cd8736dd0893089cbad12eb5a71f3a72e201b47" "61724add6ddc09a0426f6b39109a76dd83174cf36d76563d3a35c7e07c0753c6" "9fab7d4f70b99927d898a0c93b1ae90fc1529248b9c2604ed88e864fc2665aa7" "d7e434a3c19f87fa00b945edfaedc9a21a6e436a7814c23277d4112ad83b5e85" "f0dfe326bdbb237d6bc3f533d371ffa7c894a12bb0a5bcd4cb67a948a4a13101" "8a36587d6cbcc30c85372568ed29d45ec393a32e3c779cba8cfd5fade229025d" "9c22be8846bce5d64c803b1f7f4051f0675ba7c0eb492e03a17bb765b0a35d82" "01d8c9140c20e459dcc18addb6faebd7803f7d6c46d626c7966d3f18284c4502" "113ae6902d98261317b5507e55ac6e7758af81fc4660c34130490252640224a2" "d3a86848a5e9bf123f3dd3bf82ab96995837b50f780dd7d5f65dc72c2b81a955" "6dbd0dd4c344f1ca534422cc5a1fd3ed822dcde947ae983948b70c7284a0ed33" "3539b3cc5cbba41609117830a79f71309a89782f23c740d4a5b569935f9b7726" "9f3a4edb56d094366afed2a9ba3311bbced0f32ca44a47a765d8ef4ce5b8e4ea" "ced74ff794aad9ac93266bf9a9a92c5641c01b05715c6862e30459a24844eec9" "00f09a2728377a37e9a24d631de94cc7440e0803e218474cac287061951c205c" "fe6fb0cb1aa50dc563d81aad98c470a30f4e89db6d55a108f1083f33317ad413" "83279c1d867646c5eea8a804a67a23e581b9b3b67f007e7831279ed3a4de9466" "73ae6088787f6f72ef52f19698b25bc6f0edf47b9e677bf0a85e3a1e8a7a3b17" "f0e69da2cf73c7f153fc09ed3e0ba6e1fd670fec09b8a6a8ed7b4f9efea3b501" "17fd8388e49d3055185e817ed3a2b7c955a2dda92b990f475c14a8e1d97dbe4b" "3f7db1a70bee5e15a3d72b016a7e05f6d813b6868e88961c46019b57d0b29452" "6184465774e662dc5f3ddb0751b20d97aaff2ae95d5cf3c885b6c1944ddcb371" "cc495c40747ae22dd2de6e250cbd9a408e3588b59989368af565deeeff334126" "d72836155cd3b3e52fd86a9164120d597cbe12a67609ab90effa54710b2ac53b" "17f35b689dd41e49cb740bfb810ac8a53d13292cbebf68f41f772787d8b3aebf" "e7ec0cc3ce134cc0bd420b98573bbd339a908ac24162b8034c98e1ba5ee1f9f6" "4c9ba94db23a0a3dea88ee80f41d9478c151b07cb6640b33bfc38be7c2415cc4" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "923faef2c7ed017e63f517703c846c6190c31400261e8abdb1be06d5b46ea19a" "16e7c7811fd8f1bc45d17af9677ea3bd8e028fce2dd4f6fa5e6535dea07067b1" "617219c11282b84761477059b9339da78ce392c974d9308535ee4ec8c0770bee" "fe243221e262fe5144e89bb5025e7848cd9fb857ff5b2d8447d115e58fede8f7" "15cba06c24af818bb5895264b535126e60e91afb7c85ceb5bde87ff5ee7d7a04" "e83c94a6bfab82536cef63610ec58d08dfddd27752d860763055daf58d028aad" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" default)))
 '(haskell-indent-offset 2)
 '(haskell-mode-hook (quote (turn-on-haskell-indent)) t)
 '(js2-basic-offset 2)
 '(js2-language-version 200)
 '(js2-tab-width 2)
 '(json-reformat:indent-width 2)
 '(jsx-indent-level 2)
 '(jsx-syntax-check-mode "compile")
 '(package-selected-packages
   (quote
    (dockerfile-mode yaml-mode zenburn-theme yard-mode web-mode undo-tree ujelly-theme tagedit smex slime-js slim-mode skewer-mode scss-mode scala-outline-popup ruby-tools ruby-refactor ruby-hash-syntax ruby-additional rspec-mode rainbow-delimiters projectile paredit nzenburn-theme neotree multi-term load-theme-buffer-local late-night-theme jsfmt ir-black-theme inf-ruby ido-ubiquitous heroku-theme haskell-mode gruber-darker-theme gratuitous-dark-theme go-mode github-theme gandalf-theme flymake-jslint flycheck flatland-theme exec-path-from-shell ensime emmet-mode deep-thought-theme color-theme-railscasts coffee-mode clues-theme clojure-mode-extra-font-locking cider base16-theme ac-slime))))
