" set encoding=utf-8 fileencodings=utf-8
set nu
" tabstop:表示一个 tab 显示出来是多少个空格的长度默认 8。
set tabstop=4
" softtabstop:表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用。
set softtabstop=4
" shiftwidth:表示每一级缩进的长度一般设置成跟 softtabstop 一样。 
set shiftwidth=4
" 当设置成 expandtab 时，缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
set expandtab
" cindent:是特别针对C语言自动缩进
set cindent
" autoindent:表示自动缩进。
set autoindent

set hlsearch
set incsearch
set cursorline
colorscheme evening
set nowrap

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
" if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"      \| exe "normal! g'\"" | endif
" endif

syntax on

" set norelativenumber
set relativenumber
" set showcmd
" 匹配相关
" set wildmenu

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>



"noremap j 5j
"noremap k 5k


"exec "nohlsearch"
"exec "nu"



call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" color snazzy
" let g:SnazzyTransparent = 1



" right
map sl :set splitright<CR>:vsplit<CR>
" left
map sh :set nosplitright<CR>:vsplit<CR>
" up
map sk :set nosplitbelow<CR>:split<CR>
" down
map sj :set splitbelow<CR>:split<CR>


" window move
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" resize
map <up>	:res +5<CR>
map <down>	:res -5<CR>
map <left>	:vertical resize -5<CR>
map <right> :vertical resize +5<CR>

" chnag
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K



" new tab
map tn :tabe<CR>
" right tab
map tl :+tabnext<CR>
" left tabl
map th :-tabnext<CR>


" 一般插件要求
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 允许使用鼠标
"set mouse=a


" 记忆光标的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" 保证光标始终上/下有5行
set scrolloff=5


" Nerd Tree
map <LEADER>t :NERDTree<CR>



" coc
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp']
