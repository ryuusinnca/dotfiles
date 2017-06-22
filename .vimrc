" vimのデフォルト設定
set nocompatible

""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" rename用のマッピングを無効にしたため、代わりにコマンドを定義
command! -nargs=0 JediRename :call jedi#rename()
" python buildコマンド
command! PythonBuild :!command python %

" pythonのrename用のマッピングがquickrunとかぶるため回避させる
" let g:jedi#rename_command = ""
" let g:jedi#pydoc = "k"

" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=240
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=248
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" pyflake settings
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
let g:PyFlakeDefaultComplexity=10

" indentLine settings
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '' "use ¦, ┆ or │"

" syntastic settings
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
      call neobundle#begin(expand('~/.vim/bundle/'))
      endif
      " originalrepos on github
      NeoBundleFetch 'Shougo/neobundle.vim'

      "NeoBundle 'Shougo/vimproc'
      "NeoBundle 'VimClojure'
      "NeoBundle 'Shougo/vimshell'
      "NeoBundle 'Shougo/unite.vim'
      "NeoBundle 'Shougo/neocomplcache'
      "NeoBundle 'Shougo/neosnippet'
      "NeoBundle 'jpalardy/vim-slime'
      "NeoBundle 'nathanaelkane/vim-indent-guides'
      "NeoBundle 'Yggdroot/indentLine'
      NeoBundle 'w0ng/vim-hybrid'
      NeoBundle 'Flake8-vim'
      NeoBundle 'davidhalter/jedi-vim'
      NeoBundle 'hynek/vim-python-pep8-indent'
      NeoBundle 'Townk/vim-autoclose'
      NeoBundle 'scrooloose/syntastic'
      NeoBundle 'scrooloose/nerdtree'
      "NeoBundle 'klen/python-mode' " python
      call neobundle#end()

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" インストールするか自動でチェック
NeoBundleCheck
" タグファイルの指定(でもタグジャンプは使ったことがない)
set tags=~/.tags
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ステータス行に現在のgitブランチを表示する
" set statusline+=%{fugitive#statusline()}
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" バックアップディレクトリの指定(でもバックアップは使ってない)
" set backupdir=$HOME/.vimbackup
" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でもエクスプローラって使ってない)
" set browsedir=buffer
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" カラースキーマの指定
colorscheme hybrid
" 行番号の色
highlight LineNr ctermfg=darkyellow



" 構文毎に文字色を変化させる
syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

filetype plugin indent on     " required!
filetype indent on

