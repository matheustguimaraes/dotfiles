set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'prettier/vim-prettier'
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
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nikvdp/ejs-syntax'
call vundle#end()
filetype plugin indent on

" Map Leader
let mapleader = ","

" Theme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

syntax enable

" Show numbers
set number
set showmode
set wildmenu
set relativenumber
set ruler
set autoindent
set showmatch
set spelllang=en_us
set tabstop=8
set shiftwidth=4
set shiftround
set autoindent
set path+=**

" Disable backup and swap files
set nobackup
set noswapfile

" Show status line
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1

set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>w :w!<cr>
map <leader>qq :q!<cr>
" map <leader>z ZZ<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prettier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>pr :Prettier<cr>
autocmd FileType javascript set formatprg=prettier\ --stdin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ac :Ack<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitGutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_terminal_reports_focus=0
set updatetime=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jumps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>jj 30j<cr>
map <leader>kk 30k<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore in autocomplete with ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=**/node_modules/**

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snipmate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ejs'] = 'html, javascript'
