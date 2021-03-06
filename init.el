;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Bruce Durling
;; Title: otfrom-org-emacs
;; From: https://github.com/otfrom/otfrom-org-emacs/blob/master/init.el
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("elpa" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa2" . "http://melpa.org/packages/")))

;; Pin all the things
(setq package-pinned-packages
      '((aggressive-indent . "melpa-stable")
        (alchemist . "melpa-stable")
        (bind-key . "melpa-stable")
        (cider . "melpa-stable")
        (cider-eval-sexp-fu . "melpa-stable")
        (clj-refactor . "melpa-stable")
        (clojure-mode . "melpa-stable")
        (company . "melpa-stable")
        ;; (dash . "melpa-stable")
        (diminish . "melpa-stable")
        (epl . "melpa-stable")
        (exec-path-from-shell . "melpa-stable")
        (flx . "melpa-stable")
        (flx-ido . "melpa-stable")
        (git-commit . "melpa-stable")
        (hydra . "melpa-stable")
        (ido . "melpa-stable")
        (ido-completing-read+ . "melpa")
        (ido-vertical-mode . "melpa-stable")
        (flycheck-pos-tip . "melpa-stable")
        (flycheck . "melpa-stable")
        (highlight . "melpa") ;; woo! from the wiki https://www.emacswiki.org/emacs/highlight.el
        (highlight-symbol . "melpa-stable")
        (inflections . "melpa-stable")
        (magit . "melpa-stable")
        (magit-popup . "melpa-stable")
        (multiple-cursors . "melpa-stable")
        (paredit . "melpa-stable")
        (peg . "melpa-stable")
        (pkg-info . "melpa-stable")
        (pos-tip . "melpa-stable")
        (projectile . "melpa-stable")
        (rainbow-delimiters . "melpa-stable")
        (s . "melpa-stable")
        (seq . "elpa")
        (smex . "melpa-stable")
        (swiper . "melpa-stable")
        (use-package . "melpa-stable")
        (with-editor . "melpa-stable")
        (yasnippet . "melpa-stable")
        (grizzl . "melpa")
        (neotree . "melpa2")
        (undo-tree . "elpa")
        (yaml-mode . "melpa-stable")
        (haskell-mode . "melpa-stable")
        (js2-mode . "melpa-stable")
        (tagedit . "melpa-stable")
        (emmet-mode . "melpa-stable")
        (all-the-icons . "melpa")
        (multiple-cursors . "melpa")
        (sqlup-mode . "melpa")
        (ejc-sql . "melpa")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (message "Refreshing packages")
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(defvar use-package-verbose t)
(require 'bind-key)
(require 'diminish)

;; org-mode always needs to be installed in an emacs where it isn't loaded.
(when (not (package-installed-p 'org-plus-contrib))
  (package-install 'org-plus-contrib))
(require 'org)

;; On OS X, an Emacs instance started from the graphical user
;; interface will have a different environment than a shell in a
;; terminal window, because OS X does not run a shell during the
;; login. Obviously this will lead to unexpected results when
;; calling external utilities like make from Emacs.
;; This library works around this problem by copying important
;; environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell

(if (eq system-type 'darwin)
    (add-to-list 'package-pinned-packages 'exec-path-from-shell))
(org-babel-load-file (concat user-emacs-directory "org/config.org"))
