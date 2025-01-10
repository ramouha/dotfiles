(setq frame-title-format '((:eval (if (buffer-modified-p) "• ")) "%b - emacs at " system-name))
;(setq frame-title-format (list "%b" " - emacs@"system-name))

(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(set-fringe-mode 10)

;; Set up the visible bell
(setq visible-bell t)

(column-number-mode t)
(delete-selection-mode)
(setq use-short-answers t)

(global-hl-line-mode -1)
;(global-font-lock-mode t)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

(show-paren-mode)
(setq show-paren-style 'mixed)
;(electric-pair-mode 1)

;(setq c-default-style "bsd")
;(setq c-basic-offset 2)
;(setq tab-width 2)
;(setq-default indent-tabs-mode nil)

(ido-mode 1)
;(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-x") 'smex-major-mode-commands)
;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(add-to-list 'backup-directory-alist
              (cons tramp-file-name-regexp nil))
(setq backup-directory-alist
      `((".*" . ,"~/.emacs.d/tmp/backups/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/tmp/auto-saves/" t)))
(setq tramp-auto-save-directory "/tmp")

(windmove-default-keybindings)

(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(custom-enabled-themes '(tango-dark))
'(package-selected-packages '(smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
