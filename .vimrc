set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-commentary'
Plugin 'groenewege/vim-less'
Plugin 'airblade/vim-gitgutter'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on

let mapleader = "," " map leader

" Theme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

syntax enable " syntax highlighting

set title
set ruler
set number
set path+=**
set showmode
set wildmenu
set autoread
set t_Co=256 " assume environment can use 256 colors
set nobackup " Disable backup and swap files
set autoindent
set noswapfile
set shiftround
set autoindent
set backspace=2 " make backspace work like most other programs
set statusline=2
set colorcolumn=90 " set colorcolumn at right margin
set relativenumber
set ttimeoutlen=50
set spelllang=en_us " spell english language

" How Tab behaves
set tabstop=4 " number of spaces used as tab for
set softtabstop=4 " number of spaces used as tab for editing
set shiftwidth=4 " number of spaces used to autoindent
set expandtab " expand tabs into spaces
set smarttab " smart tabulation and backspace

" How IO behave
set ttyfast " assume the terminal is fast
set mouse=a " enable mouse in all modes

" Airline font, theme, etc
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1

" Nerd Tree
let g:NERDTreeWinPos = "right"
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Terminal
map <leader>w :w!<cr>
map <leader>qq :q!<cr>

" Moving around, tabs, windows and buffers
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Moving around, tabs, windows and buffers
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Prettier
" map <leader>pr :Prettier<cr>
" autocmd FileType javascript set formatprg=prettier\ --stdin

" Ack
map <leader>ac :Ack<Space>

" Git fugitive
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push<Space>

" GitGutter
let g:gitgutter_terminal_reports_focus=0
set updatetime=100

" Jumps
map <leader>jj 30j<cr>
map <leader>kk 30k<cr>

" Ignore in autocomplete with ctags
set wildignore+=**/node_modules/**

" Autoclose
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
