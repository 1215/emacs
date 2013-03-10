
(require 'auto-complete-config)
(ac-config-default)

(require 'undo-tree)
(global-undo-tree-mode)

;;;;;;;;;;;;;;
;;Load modes;;
;;;;;;;;;;;;;;

(require 'scala-mode2)
(require 'php-mode)

(autoload 'sparql-mode "sparql-mode.el" "Major mode for editing SPARQL files" t)
(add-to-list 'auto-mode-alist '("\\.rq$" . sparql-mode))


(autoload 'n3-mode "n3-mode" "Major mode for OWL or N3 files" t)
(add-hook 'n3-mode-hook
          'turn-on-font-lock)

(setq auto-mode-alist
      (append
       (list
        '("\\.n3" . n3-mode)
        '("\\.owl" . n3-mode)
	'("\\.ttl" . n3-mode))
       auto-mode-alist))


(provide 'plugins)
