(require 'package)


(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/") ))
(package-initialize)
(require 'use-package)

(use-package ace-jump-mode
  :commands ace-jump-mode
  :ensure
  :init
  (bind-key "C-." 'ace-jump-mode))
 
(bind-key "C-x f" 'find-file)
(bind-key "C-v" 'clipboard-yank)
(setq x-select-enable-clipboard t)
(use-package flatland-theme
  :ensure
  :init
  (load-theme 'flatland t))
