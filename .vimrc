" pugged setting
" ------------------------
call plug#begin('~/.vim/plugged')
 
Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
 
call plug#end()
" -----------------------

" preview setting
" ------------------------
"let g:previm_open_cmd = 'open -a Firefox'                  " previm PrevimOpenコマンドで利用するブラウザを設定
"let g:previm_open_cmd = 'open -a Safari'
let g:previm_open_cmd = 'open -a /Applications/Google\ Chrome.app'
augroup PrevimSettings                                  " previmでプレビュー対象のmarkdownファイルの拡張子を設定
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
" ------------------------

" colorscheme setting
" ------------------------
syntax enable               " デフォルトのハイライトを有効
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
" ------------------------

" User Setting
" ------------------------
set tabstop=4               " tab幅の設定
set shiftwidth=4
set softtabstop=4
set expandtab               " tabの代わりにspaceを使用
set showmatch               " 対応する括弧を強調表示
set number                  " 行番号を表示
set autoindent              " 改行時前行の改行位置を引き継ぐ
set undodir=~/.vim/tmp/undo         " undoファイル作成ディレクトリ
set backupdir=~/.vim/tmp/bkup       " undoファイル作成ディレクトリ
"set columns=120            " 画面横幅
"set lines=40               " 画面高さ
set guifont=Osaka-Mono:h16  " フォント指定
set clipboard+=unnamed       " クリップボード有効

if has('gui_running')       " guimodeの場合の処理分岐
    set columns=120            " 画面横幅
    set lines=40               " 画面高さ
else
endif

cd ~/Desktop                " 特定のディレクトリにcdする(初期のディレクトリを指定する)
" ------------------------
