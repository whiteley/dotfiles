(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(color-theme-solarized starter-kit starter-kit-bindings starter-kit-lisp starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)
  )

(set-face-attribute 'default nil
                    :family "Inconsolata-dz" :height 120 :weight 'normal)
(load-theme 'solarized-dark t)
(if (window-system) (set-frame-size (selected-frame) 128 40))

(setq exec-path (append exec-path '("/usr/local/bin")))
