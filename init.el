(set-language-environment "Japanese")
(set-language-environment-coding-systems "Japanese")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)

;;messageを消す
(setq inhibit-startup-message t)

;; goto-line を C-g に割り当て
(global-set-key "\C-g" (lambda (x) (interactive "nLine: ") (goto-line x)))

;; 行番号表示
(push "~/.emacs.d/linum/" load-path)
(require 'linum)
(global-linum-mode )
(setq linum-format "%3d ")

;; F9で行番号を表示
(global-set-key [f9] 'linum-mode)
(put 'set-goal-column 'disabled nil)

;; バックアップファイルを作成させない
(setq make-backup-files nil)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; 現在ポイントがある関数名をモードラインに表示
(which-function-mode 1)

;; 直前のバッファに戻る
(global-set-key (kbd "s-[") 'switch-to-prev-buffer)

;; 次のバッファに進む
(global-set-key (kbd "s-]") 'switch-to-next-buffer)

;;;; tree-undo
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

;;emacs_packages
;;; package.el
(require 'package)
 (when (require 'package nil t)
;;   ;; パッケージリポジトリを追加
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
  ;; インストールしたパッケージにロードパスを通してロードする
(package-initialize) )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (redo+))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
