;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; .emacs file for stormrider (wowear@gmail.com) ;;
;; (205) 895-6570  uah sb 208 (inorganic lab)    ;;
;; (205) 536-6404 (h)  3508 bradley street 35805 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; R E P O S I T O R Y   S E T U P ;;;
;;; configure emacs to use melpa
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa.org/packages/") t)
(let* ((no-ssl
	(and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))

;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives
	       (cons "melpa" (concat proto
"://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;; E N D   R E P O S I T O R Y   S E T U P ;;;

;;; T R A M P   M O D E
(setq tramp-default-method "ssh")


;;; H T M L   E X P O R T
(setq org-export-with-section-numbers nil)
(setq org-export-html-style-include-scripts nil
      org-export-html-style-include-default nil)
(setq org-export-html-style
      "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/stylesheet.css\" />")

;;; C U S T O M   S E T   V A R I A B L E S ;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("24fc62afe2e5f0609e436aa2427b396adf9a958a8fa660edbaab5fb13c08aae6" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(display-time-world-list
   (quote
    (("Europe/Stockholm" "bjornt")
     ("Europe/Rome" "ack")
     ("Europe/London" "sparkiegeek")
     ("America/New_York" "blake_r")
     ("America/Chicago" "*** me ***")
     ("America/Los_Angeles" "ltrager")
     ("America/Los_Angeles" "newell"))))
 '(ledger-reports
   (quote
    (("register" "ledger ")
     ("Assets" "ledger ")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)"))))
 '(org-agenda-files
   (quote
    ("~/mnt/Dropbox/org/inbox.org" "~/mnt/Dropbox/org/prayer.org" "~/mnt/Dropbox/org/bible.org" "~/mnt/Dropbox/org/index.org" "~/mnt/Dropbox/org/homenaut.org")))
 '(org-agenda-sorting-strategy
   (quote
    ((agenda habit-down time-up priority-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep))))
 '(org-allow-promoting-top-level-subtree t)
 '(org-export-backends (quote (ascii html icalendar latex md odt org)))
 '(org-export-with-special-strings nil)
 '(org-export-with-toc nil)
 '(org-hierarchical-todo-statistics t)
 '(org-priority-faces (quote ((0 . "dim grey"))))
 '(package-selected-packages
   (quote
    (blacken writeroom-mode json-mode bang arc-dark-theme centered-window lxc discourse blog-minimal ledger-mode org-trello free-keys org-doing org-dashboard org-brain org-alert org-agenda-property pandoc-mode pandoc org-web-tools w3m wanderlust alarm-clock)))
 '(save-place-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t))
;;; E N D   C U S T O M   S E T   V A R I A B L E S ;;;



;;; C U S T O M   S E T   F A C E S ;;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 151 :width normal))))
 '(fringe ((t (:background "#21252b"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "gainsboro"))))
 '(outline-1 ((t (:inherit font-lock-function-name-face :foreground "red"))))
 '(outline-2 ((t (:inherit font-lock-variable-name-face :foreground "dark orange"))))
 '(outline-3 ((t (:inherit font-lock-keyword-face :foreground "light goldenrod"))))
 '(outline-5 ((t (:inherit font-lock-type-face :foreground "royal blue"))))
 '(outline-6 ((t (:inherit font-lock-constant-face :foreground "magenta")))))
;;; E N D   C U S T O M   S E T   F A C E S ;;;



;;; N O N - O R G - M O D E   C U S T O M I Z A T I O N S ;;;
;; customize the world time display to keep window small
(setq display-time-world-time-format "%a %R")

;; customize dired to display human file sizes
(setq dired-listing-switches "-alh")
(require 'dired-x)

;; add time and battery indicators to the mode line
(display-time-mode 1)
(display-battery-mode 1)

;; make my text always wrap to the window, without breaking the lines
(global-visual-line-mode 1)
(put 'downcase-region 'disabled nil)

;; set dired-omit-mode to hide dot files
;;(require 'dired-x)
;;(setq-default dired-omit-files-p t)
;;(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

;; set up windmove
(windmove-default-keybindings 'control)


;;; E N D   N O N - O R G - M O D E   C U S T O M I Z A T I O N S ;;;


;;; O R G - M O D E   C U S T O M I Z A T I O N S ;;;
;; the standard org-mode keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

;; turn off html validation
(setq org-html-validation-link nil)

;; org-capture setup
(setq org-capture-templates '(("i" "inbox" entry
			       (file+headline
				"~/var/log/newgtd.org"
				"inbox")
			       "* %?\n %i\n")))

;; diary file, to quiet some reminder features
(setq diary-file "~/Dropbox/org/diary.org")

;; only show the current repetition
(setq org-agenda-repeating-timestamp-show-all nil)

;; hide emphasis markers - nice, but makes entering headlines hard
;;(setq org-hide-emphasis-markers t)

;; catch invisible edits
(setq org-catch-invisible-edits "show")

;; python stuff
(add-hook 'python-mode-hook 'blacken-mode)

;; experimental
;;(setq org-agenda-sorting-strategy '((agenda habit-down time-up ts-up
;;     priority-down category-keep)
;;  (todo priority-down category-keep)
;;  (tags priority-down category-keep)
;;  (search category-keep)))

;; an experimental "scratch out done" function
;;   (isn't really working yet)
;;(defun my/modify-org-done-face ()
;;  (setq org-fontify-done-headline t)
;;  (set-face-attribute 'org-done nil
;;		      :foreground "dim gray")
;;  (set-face-attribute 'org-headline-done nil
;;		      :strike-through t
;;		      :foreground "dim gray"))

;;(eval-after-load "org"
;;  (Add-hook 'org-add-hook 'my/modify-org-done-face))
;;; E N D   O R G - M O D E   C U S T O M I Z A T I O N S ;;;

;;(fset 'find-top
;;   (lambda    (&optional    arg)    "Keyboard    macro."    (interactive    "p")
;;     (kmacro-exec-ring-item (quote ("142" 0 "%d")) arg)))
;;(global-set-key (kbd "C-c c") 'find-top)
;;(global-set-key (kbd "C-c d") 'browse-url)
(fset 'codeblock
   [?< ?b ?l ?o ?c ?k ?q ?u ?o ?t ?e ?  ?s ?t ?y ?l ?e ?= ?\" ?f ?o ?n ?t ?- ?s ?i ?z ?e ?: ?9 ?0 ?% ?\; ?  ?f ?o ?n ?t ?- ?f ?a ?i backspace ?m ?i ?l ?y ?: ?m ?o ?n ?o ?s ?p ?a ?c ?e ?\; ?  ?p ?a ?d ?d ?i ?n ?g ?- ?l ?e ?f ?t ?: ?1 ?0 ?p ?a backspace ?x ?\; ?  ?b ?a ?c ?k ?g ?r ?o ?u ?n ?d ?- ?c ?o ?l ?o ?r ?: ?l ?i ?g ?h ?t ?g ?r ?a ?y ?\; ?\" ?> return ?< ?s ?p ?a ?n ?  ?s ?t ?y ?l ?e ?= ?\" ?c ?o ?l ?o ?r ?: ?d ?i ?m ?g ?r ?a ?y ?\; ?\" ?> ?s ?t ?o ?r ?m ?r ?i ?d ?e ?r ?@ ?w ?i ?n ?t ?e ?r ?m ?u ?t ?e ?: ?~ ?$ ?/ backspace ?< ?/ ?s ?p ?a ?n ?< ?s ?t backspace backspace backspace ?> ?< ?s ?t ?r ?o ?n ?g ?> return return ?< ?/ ?s ?t ?r ?o ?n ?g ?> ?< ?p ?r ?e ?> ?< ?c ?o ?d ?e ?> return return ?< ?/ ?c ?o ?d ?e ?> ?< ?/ ?p ?r ?e ?> return ?< ?/ ?b ?l ?o ?c ?k ?q ?u ?o ?t ?e ?> return])
(fset 'ui
   [?< ?! ?- ?- ?  ?u ?i ?  return escape ?\} ?  ?u ?i ?  ?- ?- ?> return backspace])
(fset 'cli
   [?< ?! ?- ?- ?  ?c ?l ?i return escape ?\} ?  ?c ?l ?i ?  ?- ?- ?> return backspace])
(fset 'vanilla
      [?< ?! ?- ?- ?  ?v ?a ?n ?i ?l ?l ?a return escape ?\} ?  ?v ?a ?n ?i ?l ?l ?a ?  ?- ?- ?> return backspace])
(fset 'add-cli
   [return ?< ?! ?- ?- ?  ?c ?l ?i return ?# ?# ?# ?  ?A ?D ?D ?\S-  ?S ?U ?I ?T ?A ?B ?L ?E ?\S-  ?C ?L ?I ?\S-  ?E ?X ?P ?L ?A ?N ?A ?T ?I ?O ?N ?/ ?E ?X ?A ?M ?P ?L ?E ?\S-  ?H ?E ?R ?E return ?- ?- backspace backspace ?  ?c ?l ?i ?  ?- ?- ?> return return ?! backspace ?< ?! ?- ?- ?  ?v ?a ?n ?i ?l ?l ?a return ?# ?# ?# ?  ?A ?D ?D ?\S-  ?S ?U ?I ?T ?A ?B ?L ?E ?\S-  ?C ?L ?I ?\S-  ?E ?X ?P ?L ?N ?A backspace backspace ?A ?N ?A ?T ?I ?O ?N ?/ ?E ?X ?A ?M ?P ?L ?E ?  ?H ?E ?R ?E return ?  ?v ?a ?n ?i ?l ?l ?a ?  ?- ?- ?> return backspace])

;; set up my display
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-splasch-screen t)
(org-agenda-list)
(split-window-horizontally)
(next-multiframe-window)
(next-multiframe-window)
(split-window-horizontally)
(find-file "~/mnt/Dropbox/src/git/maas-rad")
(next-multiframe-window)
(find-file "~/mnt/Dropbox/src/git/maas-rad/originals")
(next-multiframe-window)
(find-file "~/mnt/Dropbox/src/git/maas-rad/makefile")
(split-window-vertically)
(eshell)
(next-multiframe-window)
(next-multiframe-window)
(split-window-vertically)
(next-multiframe-window)
(find-file "~/mnt/Dropbox/org/homenaut.org")
(split-window-vertically)
(find-file "~/mnt/Dropbox/org/index.org")
(next-multiframe-window)
(split-window-horizontally)
(next-multiframe-window)
