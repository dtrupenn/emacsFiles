;; Here are some examples of how to override the defaults for the
;; various prelude-emacs settings.  To *append* to any of the
;; configurations attached to prelude-*-hooks, you can attach a
;; function to the appropriate hook:

;; disable whitespace-mode and whitespace-cleanup
;(add-hook 'prelude-prog-mode-hook
;          (lambda ()
;            (prelude-turn-off-whitespace)
;            (remove-hook 'before-save-hook 'whitespace-cleanup)) t)

;; For other global settings, just run the appropriate function; all
;; personal/*.el files will be evaluate after prelude-emacs is loaded.

;; disable line highlight
;; (global-hl-line-mode -1)

;; make the cursor blinking
;; (blink-cursor-mode t)

;; ***BEGIN MY SECTION***

(add-hook 'prog-mode-hook 'turn-off-guru-mode t)

;; Set email
(setq user-mail-address "dtru@seas.upenn.edu")


;; ocaml tuareg mode
(add-to-list 'load-path "~/.emacs.d/personal/tuareg-caml-mode")
(add-to-list 'load-path "~/.emacs.d/personal/tuareg-2.0.4")
(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)

;; Fix aspell bug with prelude on osx
(setq ispell-program-name "/opt/local/bin/aspell")
