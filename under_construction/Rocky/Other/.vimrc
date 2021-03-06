" Don't try to be vi compatible
set nocompatible
filetype off
" Helps force plugins to load correctly when it is turned back on below
filetype on

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

set mouse=a

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#branch#enable = 1
let g:airline#extensions#whitespace#enable = 1
let g:airline#extensions#hunks#non_zero_only = 1

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:hybrid_termcolors=256
let g:hybrid_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme base16-tomorrow-night
" colorscheme hybrid
" colorscheme gruvbox
" colorscheme base16-ashes
" colorscheme base16-atelier-estuary
" colorscheme base16-codeschool
" colorscheme minimalist
hi Normal ctermbg=none

set encoding=utf-8

"highlight LineNr ctermbg=black ctermfg=blue

let &t_SI = "\<Esc>[5 q"
let &t_EI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[5 q"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bling/vim-airline'
Plugin 'dikiaap/minimalist'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'garbas/vim-snipmate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'L9'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'stanangeloff/php.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'VundleVim/Vundle.vim'
"Plugin 'wincent/command-t.git'
call vundle#end()
filetype plugin indent on
