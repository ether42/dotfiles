;; highlight the line containing the cursor
(global-hl-line-mode)

(use-package nlinum
  :ensure t
  :quelpa ((nlinum :fetcher github :repo "emacsmirror/nlinum"))
  :config
  ;; highlight the margin with the same line highlighting
  (set-face-attribute 'nlinum-current-line nil ; replace with :custom-face?
                      :foreground (face-attribute 'linum :foreground nil t)
                      :background (face-attribute 'hl-line :background nil t))
  (setq nlinum-format "%d ")
  (setq nlinum-highlight-current-line t)
  (global-nlinum-mode t))