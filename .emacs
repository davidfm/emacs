
;; —————————————————————————
;; File: .emacs
;; Author: David <david@davidfm.es>
;; Description: emacs configuration file
;; —————————————————————————
;;
;;            /–> Major (Global change)
;;           /
;;          /     /–> Emacs version
;;         /    /
;; Version 0.4(23)l –> Platform version
;;            \
;;              \-> Minor (Local change)
;;
;; Major could be:
;;  ==> 0 (stable)
;;  ==> 1 (unstable)
;;
;; Minor could be:
;;  ==> 1 (release)
;;  ==> 2 (current)
;;
;; Emacs version:
;;  ==> 21 (Emacs 21)
;;  ==> 22 (Emacs 22)
;;  ==> 23 (Emacs 23)
;;
;; Platform version:
;;  ==> l (Linux)
;;  ==> n (netbsd)
;;  ==> o (openbsd)
;;  ==> w (windows)
;;  ==> x (os x)
;;
;; Last summary changelog: 0.3(23)-l – 0.4(23)-l
;;  ==> Ported wombat theme
;
;; —————————————————————————
;; Configuration variables
;; —————————————————————————
;; system-type could be:
;;  -> gnu/linux
;;  -> windows-nt
;;  -> darwin
(add-to-list 'load-path "~/.emacs.d/cl-lib/")
(require 'cl-lib)

;
;; —————————————————————————
;; Highlighting
;; —————————————————————————
;; highlight region between point and mark
(transient-mark-mode t)
;; highlight during query
(setq query-replace-highlight t)
;; highlight incremental search
(setq search-highlight t)
;; Show matching parenthesis. How can you live without it.
(show-paren-mode t)
;
;; —————————————————————————
;; Behaviour
;; ————————————————————————–
;; don't make pesky backup files
(setq make-backup-files nil)
;; don't use version numbers for backup files
(setq version-control 'never)
;; Open unidentified files in text mode
(setq default-major-mode 'text-mode)
;; Do only one line scrolling.
(setq scroll-step 1)
;; Don't wrap long lines.
(set-default 'truncate-lines t)
;; Make the region visible (but only up to the next operation on it)
(setq transient-mark-mode t)
;; Colours ("Colors" in some other languages)
;; Give me colours in major editing modes!
(require 'font-lock)
(global-font-lock-mode t)
;; Don't add new lines to the end of a file when using down-arrow key
(setq next-line-add-newlines nil)
;; Dont show the GNU splash screen
;(setq inhibit-startup-message t)
;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)
;
;; —————————————————————————
;; Editing modes
;; —————————————————————————-
(setq auto-mode-alist
'(("\\.[Cc][Oo][Mm]\\'" . text-mode)
("\\.bat\\'" . bat-generic-mode)
("\\.inf\\'" . inf-generic-mode)
("\\.rc\\'" . rc-generic-mode)
("\\.reg\\'" . reg-generic-mode)
("\\.cob\\'" . cobol-mode)
("\\.cbl\\'" . cobol-mode)
("\\.te?xt\\'" . text-mode)
("\\.c\\'" . c-mode)
("\\.h\\'" . c++-mode)
("\\.py\\'" . python-mode)
("\\.tex$" . LaTeX-mode)
("\\.sty$" . LaTeX-mode)
("\\.bbl$" . LaTeX-mode)
("\\.bib$" . BibTeX-mode)
("\\.el\\'" . emacs-lisp-mode)
("\\.scm\\'" . scheme-mode)
("\\.l\\'" . lisp-mode)
("\\.lisp\\'" . lisp-mode)
("\\.f\\'" . fortran-mode)
("\\.F\\'" . fortran-mode)
("\\.for\\'" . fortran-mode)
("\\.p\\'" . pascal-mode)
("\\.pas\\'" . pascal-mode)
("\\.ad[abs]\\'" . ada-mode)
("\\.\\([pP][Llm]\\|al\\)\\'" . perl-mode)
("\\.cgi$"  . perl-mode)
("\\.s?html?\\'" . sgml-mode)
("\\.idl\\'" . c++-mode)
("\\.cc\\'" . c++-mode)
("\\.hh\\'" . c++-mode)
("\\.hpp\\'" . c++-mode)
("\\.C\\'" . c++-mode)
("\\.H\\'" . c++-mode)
("\\.cpp\\'" . c++-mode)
("\\.[cC][xX][xX]\\'" . c++-mode)
("\\.hxx\\'" . c++-mode)
("\\.c\\+\\+\\'" . c++-mode)
("\\.h\\+\\+\\'" . c++-mode)
("\\.m\\'" . objc-mode)
("\\.java\\'" . java-mode)
("\\.ma?k\\'" . makefile-mode)
("\\(M\\|m\\|GNUm\\)akefile\\(\\.in\\)?" . makefile-mode)
("\\.am\\'" . makefile-mode)
("\\.mms\\'" . makefile-mode)
("\\.texinfo\\'" . texinfo-mode)
("\\.te?xi\\'" . texinfo-mode)
("\\.s\\'" . asm-mode)
("\\.S\\'" . asm-mode)
("\\.asm\\'" . asm-mode)
("ChangeLog\\'" . change-log-mode)
("change\\.log\\'" . change-log-mode)
("changelo\\'" . change-log-mode)
("ChangeLog\\.[0-9]+\\'" . change-log-mode)
("changelog\\'" . change-log-mode)
("changelog\\.[0-9]+\\'" . change-log-mode)
("\\$CHANGE_LOG\\$\\.TXT" . change-log-mode)
("\\.scm\\.[0-9]*\\'" . scheme-mode)
("\\.[ck]?sh\\'\\|\\.shar\\'\\|/\\.z?profile\\'" . sh-mode)
("\\(/\\|\\`\\)\\.\\(bash_profile\\|z?login\\|bash_login\\|z?logout\\)\\'" . sh-mode)
("\\(/\\|\\`\\)\\.\\(bash_logout\\|[kz]shrc\\|bashrc\\|t?cshrc\\|esrc\\)\\'" . sh-mode)
("\\(/\\|\\`\\)\\.\\([kz]shenv\\|xinitrc\\|startxrc\\|xsession\\)\\'" . sh-mode)
("\\.mm\\'" . nroff-mode)
("\\.me\\'" . nroff-mode)
("\\.ms\\'" . nroff-mode)
("\\.man\\'" . nroff-mode)
("\\.[12345678]\\'" . nroff-mode)
("\\.TeX\\'" . TeX-mode)
("\\.sty\\'" . LaTeX-mode)
("\\.cls\\'" . LaTeX-mode)
("\\.clo\\'" . LaTeX-mode)
("\\.bbl\\'" . LaTeX-mode)
("\\.bib\\'" . BibTeX-mode)
("\\.m4\\'" . m4-mode)
("\\.mc\\'" . m4-mode)
("\\.mf\\'" . metafont-mode)
("\\.mp\\'" . metapost-mode)
("\\.vhdl?\\'" . vhdl-mode)
("\\.article\\'" . text-mode)
("\\.letter\\'" . text-mode)
("\\.tcl\\'" . tcl-mode)
("\\.exp\\'" . tcl-mode)
("\\.itcl\\'" . tcl-mode)
("\\.itk\\'" . tcl-mode)
("\\.icn\\'" . icon-mode)
("\\.sim\\'" . simula-mode)
("\\.mss\\'" . scribe-mode)
("\\.f90\\'" . f90-mode)
("\\.lsp\\'" . lisp-mode)
("\\.awk\\'" . awk-mode)
("\\.prolog\\'" . prolog-mode)
("\\.tar\\'" . tar-mode)
("\\.\\(arc\\|zip\\|lzh\\|zoo\\|jar\\)\\'" . archive-mode)
("\\.\\(ARC\\|ZIP\\|LZH\\|ZOO\\|JAR\\)\\'" . archive-mode)
("\\`/tmp/Re" . text-mode)
("/Message[0-9]*\\'" . text-mode)
("/drafts/[0-9]+\\'" . mh-letter-mode)
("\\.zone\\'" . zone-mode)
("\\`/tmp/fol/" . text-mode)
("\\.y\\'" . c-mode)
("\\.lex\\'" . c-mode)
("\\.oak\\'" . scheme-mode)
("\\.sgml?\\'" . sgml-mode)
("\\.xml\\'" . sgml-mode)
("\\.dtd\\'" . sgml-mode)
("\\.ds\\(ss\\)?l\\'" . dsssl-mode)
("\\.idl\\'" . c++-mode)
("[]>:/\\]\\..*emacs\\'" . emacs-lisp-mode)
("\\`\\..*emacs\\'" . emacs-lisp-mode)
("[:/]_emacs\\'" . emacs-lisp-mode)
("\\.ml\\'" . lisp-mode)))
;
;; —————————————————————————
;; Modeline
;; —————————————————————————
;; Current line & column of cursor in the mode line (bar at the bottom)
(line-number-mode 1)
(setq column-number-mode t)
;; show current function in modeline
(which-func-mode t)
;; Display time in the mode line
;; Put this line last to prove (by the time in the mode line)
;; that the .emacs loaded without error to this point.
;; Unnaproved (too long, use calendar)
;;(setq display-time-day-and-date t )
;; Unnaproved (too long, replace by short format)
;;(setq display-time-24hr-format t)
;;(display-time)
(display-time-mode 1)
;; The mode line (bar at the bottom)
;; ENABLE ONLY WITHOUT COLOR-THEMES (IF NOT WE ARE CHANING SOMETIMES THE MODELINE)
;; (add-hook 'font-lock-mode-hook
;;           '(lambda ()
;;              (set-face-background 'modeline               "White")
;;              (set-face-foreground 'modeline               "Blue")
;; ))
;; IMPORTANT: Modeline format has problems with ERC mode, we should not modify
;; Testing phase (unnaproved change)
;;
;; Modeline format (put in order parameters shown in modeline)
;; (setq-default mode-line-format
;;       (list "-"
;;          'mode-line-modified
;;          'mode-line-frame-identification
;;          'mode-line-buffer-identification
;;                  'which-func-format
;;            '(line-number-mode "–L%l–")
;;          '(column-number-mode "C%c–")
;;          '"P%p–"
;;          '"( " mode-name " /" minor-mode-alist " )   "
;;          'global-mode-string
;;       )
;; )
; [Disabled] Test change modeline
;(set-face-background 'modeline               "dark slate blue")
;(set-face-foreground 'modeline               "White")
;
;; —————————————————————————
;; Jedi (autocomplete for Python)
;; —————————————————————————
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                     
(setq jedi:complete-on-dot t)
;; —————————————————————————
;; Auto Completion
;; —————————————————————————
;; ensure abbrev mode is always on
(setq-default abbrev-mode t)
;; do not bug me about saving my abbreviations
(setq save-abbrevs nil)
;; load up modes I use
(require 'cc-mode)
(require 'perl-mode)
(require 'cperl-mode)
(require 'sh-script)
(require 'shell)
(require 'python)   ;; I use python.el from Emacs CVS, uncomment if you do also
;; load up abbrevs for these modes
;; Remember that to use msf-abbrev we need to launch in emacs:
;; M-x msf-abbrev-scan-modes <CR>
;; c-mode <CR>
;; Commented abbrev mode in macos
;; (add-to-list 'load-path "~/.emacs.d/lisp")
;; (require 'msf-abbrev)
;; (setq msf-abbrev-verbose t) ;; optional
;; (setq msf-abbrev-root "~/.emacs.d/mode-abbrevs")
;; (global-set-key (kbd "C-c l") 'msf-abbrev-goto-root)
;; (global-set-key (kbd "C-c a") 'msf-abbrev-define-new-abbrev-this-mode)
;; Smart tab
(define-key c-mode-map (kbd "TAB") 'smart-tab)
(defun smart-tab ()
"This smart tab is minibuffer compliant: it acts as usual in
the minibuffer. Else, if mark is active, indents region. Else if
point is at the end of a symbol, expands it. Else indents the
current line."
(interactive)
(if (minibufferp)
(minibuffer-complete)
(if mark-active
(indent-region (region-beginning)
(region-end))
(if (looking-at "\\_>")
(hippie-expand nil)
(indent-for-tab-command)))))
; TAB = Autocompletion (smarttab)
; Intro = INTRO + indentation (mapped function to keybinding)
; M-TAB = complete-symbol (dabbrev – uses ETAGS)
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key lisp-mode-map (kbd "TAB") 'lisp-complete-symbol)
;
;; —————————————————————————
;; Fullscreen
;; —————————————————————————
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
)
(toggle-fullscreen)

;; —————————————————————————
;; Frames and windows sizes
;; —————————————————————————
;; Initial size and position of frame and variable width font
;; (sizes with menubar, toolbar and scrollbar)
;; (set-frame-width (selected-frame) 177)
;; (set-frame-height (selected-frame) 45)
;; (set-frame-position (selected-frame) 0 0)
;; (sizes without menubar, toolbar, and scrollbar) and variable width font
;(set-frame-width (selected-frame) 179)
;(set-frame-height (selected-frame) 47)
;(set-frame-position (selected-frame) 2 2)
;; default-frame-alist (properties same than initial-frame-alist) and variable width font
;(setq default-frame-alist '((top . 2) (left . 2) (width . 179) (height . 47)))
;; LAST OK for variable width font, next two lines, please uncomment if required
;(setq default-frame-alist '((top . 3) (left . 845) (width . 162) (height . 83)))
;(setq initial-frame-alist '((top . 3) (left . 2) (width . 162) (height . 83)))
;; Initial size and position of frame and fixed width font
;(setq default-frame-alist '((top . 2) (left . 875) (width . 98) (height . 77)))
;(setq initial-frame-alist '((top . 2) (left . 70) (width . 98) (height . 77)))
;; For Apocalipsis computer with two widescreens 22″ (1680×1050 x 2 monitors) and terminus-10 font
;(setq default-frame-alist '((top . 0) (left . 1680) (width . 207) (height . 72)))
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 207) (height . 72)))
;; Disabling menubar, toolbar and scrollbar
(menu-bar-mode -1)
;; [IMPORTANT] Disable scroll-bar-mode and tool-bar-mode when emacs without gtk support
;;            or unsupported options built.
(scroll-bar-mode -1)
(tool-bar-mode -1)
;; Show calendar on start up [Disabled]
;(calendar)
;
;; —————————————————————————
;; Color theme
;; —————————————————————————
; [Enabled] temporary color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
; Disabled for Testin
(if (display-graphic-p)
;    (color-theme-subdued)
(color-theme-tty-dark)   ; X
(color-theme-wombat)) ; console
;; Top3 color-themes
;(color-theme-overdrive) ; for console
;(color-theme-tty-dark) ; for X
;(color-theme-wombat) ; both
;; Other interesting themes [Commentted]
;(color-theme-goldenrod)
;(color-theme-dark-erc)
;(color-theme-word-perfect)
;(color-theme-hober)
;(color-theme-matrix)
;(color-theme-black-on-gray)
;(color-theme-dark-blue)
;(color-theme-aalto-light)
;(color-theme-billw)
;(color-theme-subdued)
;(color-theme-akk)
;(color-theme-lethe)
;(color-theme-calm-forest)
;(color-theme-vim-colors)
;(color-theme-clarity)
; Favourite themes [Some of them require downloading 'by hand']
;(color-theme-charcoal-personal)
;(color-theme-hober2)
;(color-theme-blackboard)
;(color-theme-tomtt)
;(color-theme-twilight)
; Test change modeline
(set-face-background 'modeline               "white")
(set-face-foreground 'modeline               "blue")
;
;; —————————————————————————
;; Yasnippet (template autocompletion, etc) from google
;; —————————————————————————
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas--initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))

;
;; —————————————————————————
;; iswitchb (work with buffers confortably)
;; —————————————————————————
;; Remember use C-x b and C-s or C-r to shift or unshift the buffer
;; also chars could be used to filter the buffer and ENTER or TAB
;; could be used to confirm the switch
(require 'iswitchb)
(iswitchb-mode)
;; iswitchb ignores
(add-to-list 'iswitchb-buffer-ignore "^ ")
(add-to-list 'iswitchb-buffer-ignore "*Messages*")
(add-to-list 'iswitchb-buffer-ignore "*ECB")
(add-to-list 'iswitchb-buffer-ignore "*Buffer")
(add-to-list 'iswitchb-buffer-ignore "*Completions")
(add-to-list 'iswitchb-buffer-ignore "*ftp ")
(add-to-list 'iswitchb-buffer-ignore "*bsh")
(add-to-list 'iswitchb-buffer-ignore "*jde-log")
(add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")

;; —————————————————————————
;; ECB (Emacs Code Browser)
;; —————————————————————————
;; Add to the PATH ECB directory
;(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
;; Load ecb.el
;(load-file "~/.emacs.d/ecb-2.40/ecb.el")
;; Require ECB (ECB-options are available from now)
;(require 'ecb)
;; Load ECB after starting it (fast loading but ECB-* and semantic-options available from ECB)
;(require 'ecb-autoloads)
;

;; —————————————————————————
;; Linum (line numbers) M-x linum-mode to enable
;; —————————————————————————
(load-file "~/.emacs.d/linum.el")
(require 'linum)
(setq linum-format "%d ")
;(autoload 'linum "linum" "Line numbers for buffers." t)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;

;; —————————————————————————
;; Whites (white-space) show blanks
;; —————————————————————————
;; M-x whitespace-mode to enable
;; Reduce colors and chars in whitespace-mode
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
;; Show Pilcrow sign, etc (xahlee.org/emacs/whitespace-mode.html)
(setq whitespace-display-mappings
'(
(space-mark 32 [183] [46]) ;; Normal space
(space-mark 160 [164] [95])
(space-mark 2208 [2212] [95])
(space-mark 2336 [2340] [95])
(space-mark 3616 [3620] [95])
(space-mark 3872 [3876] [95])
(newline-mark 10 [182 10]) ; newline
(tab-mark 9 [9655 9] [92 9]) ; TAB
)
)
;
;; —————————————————————————
;; Scroll (Disabled)
;; —————————————————————————
; (set-scroll-bar-mode 'right)
; (setq
;   scroll-margin 0
;   scroll-conservatively 100000
;   scroll-preserve-screen-position 1)
;
;; —————————————————————————
;; Cursor depending of mode
;; —————————————————————————
;; Change cursor color according to mode; inspired by
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically
(setq djcb-read-only-color       "gray")
;; valid values are t, nil, box, hollow, bar, (bar . WIDTH), hbar,
;; (hbar. HEIGHT); see the docs for set-cursor-type
(setq djcb-read-only-cursor-type 'hbar)
(setq djcb-overwrite-color       "red")
(setq djcb-overwrite-cursor-type 'box)
(setq djcb-normal-color          "yellow")
(setq djcb-normal-cursor-type    'bar)
(defun djcb-set-cursor-according-to-mode ()
"change cursor color and type according to some minor modes."
(cond
(buffer-read-only
(set-cursor-color djcb-read-only-color)
(setq cursor-type djcb-read-only-cursor-type))
(overwrite-mode
(set-cursor-color djcb-overwrite-color)
(setq cursor-type djcb-overwrite-cursor-type))
(t
(set-cursor-color djcb-normal-color)
(setq cursor-type djcb-normal-cursor-type))))
(add-hook 'post-command-hook 'djcb-set-cursor-according-to-mode)
;

;; —————————————————————————
;; Typing of Emacs
;; —————————————————————————
(add-to-list 'load-path "~/.emacs.d/typing")
(require 'typing)

;; —————————————————————————
;; Emacs for Python
;; —————————————————————————
;(load-file "~/.emacs.d/emacs-for-python/epy-init.el")
;(epy-django-snippets)
;(epy-setup-ipython)
;(require 'highlight-indentation)
;(add-hook 'python-mode-hook 'highlight-indentation)

;; —————————————————————————
;; Packages management
;; —————————————————————————
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; —————————————————————————
;; Autopair
;; —————————————————————————
(add-to-list 'load-path "~/.emacs.d/")
(require 'autopair)
(autopair-global-mode)
