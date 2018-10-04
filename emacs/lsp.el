;;; lsp.el --- Language Server Protocol setup.

;;; Commentary:

;;; Code:

(use-package lsp-mode
  :defer t
  :straight (:host github :repo "emacs-lsp/lsp-mode"))

(use-package lsp-ui
  :straight (:host github :repo "emacs-lsp/lsp-ui")
  :hook (lsp-mode . lsp-ui-mode)
  :config
  ;; avoid showing duplicate symbols or it can quickly grow on multiple lines
  (setq lsp-ui-sideline-ignore-duplicate t))

(use-package company-lsp
  :straight (:host github :repo "tigersoldier/company-lsp")
  :config
  (push 'company-lsp company-backends)
  ;; requires yasnippet, used to complete arguments
  ;; may need to setup some functions, see company-lsp--fallback-snippet
  (setq company-lsp-enable-snippet t))

;;; lsp.el ends here
