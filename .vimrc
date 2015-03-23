" ------------------------
" Neo Bundle Setting Start
" ------------------------
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" ------------------------
" Neo Bundle Setting End
" ------------------------

" preview setting
" ------------------------
"let g:previm_open_cmd = 'open -a Firefox'              " previm PrevimOpenコマンドで利用するブラウザを設定
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
set expandtab               " tabの代わりにspaceを使用
set showmatch               " 対応する括弧を強調表示
"set number                 " 行番号を表示
"set autoindent             " 改行時前行の改行位置を引き継ぐ
set backupdir=~/.vim/tmp/bkup   " backupファイル作成ディレクトリ
set undodir=~/.vim/tmp/undo     " undoファイル作成ディレクトリ
"set columns=120            " 画面横幅
"set lines=40               " 画面高さ

if has('gui_running')       " guimodeの場合の処理分岐
    set columns=120            " 画面横幅
    set lines=40               " 画面高さ
else
endif
" ------------------------
