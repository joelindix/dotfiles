if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
endif

" activates filetype detection
filetype plugin indent on

set encoding=utf-8
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
" set relativenumber
set number
set cursorline
set showmatch
" Always show statusline
set laststatus=2
set termguicolors
set fillchars+=stl:\ ,stlnc:\
"set guifont=PragmataProMono\ 11
set guifont=Hack\ 11
set t_ZH=[3m
set t_ZR=[23m
" The "^[" is a single character. You enter it by pressing Ctrl+v and then ESC.
" The next two lines are needed for vim with tmux and truecolor
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
" Add plugins to &runtimepath
call plug#end()

let g:user_emmet_leader_key='<C-M>'
" Per airline:
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_skip_empty_sections = 1

"set background=light
"let g:gruvbox_contrast_light='soft'
let g:gruvbox_italic=1
set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
"colorscheme solarized8_dark
syntax on
