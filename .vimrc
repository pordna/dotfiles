" 基本設定
set tabstop=2 " 表示tab幅
set expandtab " tabはスペース入力
set shiftwidth=2 " 自動インデント幅
set autoindent " 前の行のインデント継続

set confirm   " ファイルを保存していない場合に、ファイルの保存を確認するダイアログを出す
set backspace=indent,eol,start  " BS でなんでも消せるようにする
set clipboard+=unnamed,autoselect  " クリップボードを使用
set backspace=indent,eol,start  "BSでなんでも消せるようにする
set showmode

"mouse操作
set ttymouse=xterm2

set mouse=nic "or set mouse=a

set history=50

"set t_Co=256

set number

"--------------------------------------------------------
"" ステータスライン
"--------------------------------------------------------
"set laststatus=2    " ステータスラインを常に表示する
set ruler
"ステータスライン上にルーラーを表示する（カーソルが何行目の何列目に置かれているか）


set ignorecase " 大文字/小文字の区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan " 検索時に最後まで行ったら最初に戻る
set smartindent " オートインデント

set display=lastline

set list
set listchars=eol:/
"set listchars=trail:-
",eol:↲,nbsp:%
"set nolist 設定解除

filetype indent on  " ファイルタイプによるインデントを行う
filetype plugin on  " ファイルタイプによるプラグインを使う



set showmatch   " 括弧の対応をハイライト
set cursorline  " カーソル行のハイライト

" ハイライトON
set hlsearch
"消す方法→ :noh

"--------------------------------------------------------
"" 補完
"--------------------------------------------------------
set wildmenu        " コマンドラインモードでの補完を有効に
set wildchar=<C-o>    " コマンド補完を開始するキー  "



"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
"
" NERDTreeを設定                 " <----- 追記
NeoBundle 'scrooloose/nerdtree'  " <----- 追記
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'derekwyatt/vim-scala'


 call neobundle#end()


" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
 NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

nnoremap <silent><C-y> :NERDTreeToggle<CR>
nnoremap <silent><C-t> :Unite colorscheme -auto-preview<CR>

filetype plugin indent on     " required!
filetype indent on
" カラー設定:
"colorscheme  hybrid
"set background=dark
colorscheme  jellybeans
"colorscheme  lucius
if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif
syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
syntax on "
