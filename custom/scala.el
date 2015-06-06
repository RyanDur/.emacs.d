(setenv "JDK_HOME" "/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home")
(setenv "PATH" (concat "/usr/local/Cellar/scala/2.11.4/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/Cellar/sbt/0.13.7/bin:" (getenv "PATH")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/elpa/scala-mode2-20150113.2309")
(require 'scala-mode2)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
