; cc-mode configuration

(when (require 'cc-mode nil t)
  (add-hook 'c-mode-common-hook
    (lambda ()
      (setq c-basic-offset tab-width)
      (setq c-default-style "k&r")
      (c-set-offset 'arglist-intro '+)
      (c-set-offset 'arglist-close 0)
      (c-set-offset 'case-label '+)
      ; (c-toggle-auto-state 1)
      ; (c-toggle-hungry-state 1)
    )
  )
)
