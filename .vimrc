let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Setting up global variables

let g:airline_powerline_fonts = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_sign_column_always = 1
let g:coc_default_semantic_highlight_groups = 1

" Plugins Configuration

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'yggdroot/indentline'
" Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'ervandew/supertab'
Plug 'stevearc/vim-arduino'
Plug 'xuhdev/SingleCompile'

call plug#end()

" Theming Configuration

set background=dark
colorscheme gruvbox

" Setting sane defaults

set number
set ruler
set mouse=a
set autoindent expandtab tabstop=2 shiftwidth=2
syntax enable
filetype plugin indent on

" Required for coc.nvim

set encoding=utf-8 
" set nobackup
" set nowritebackup
" set updatetime=300

" Set sane keybindings


" Setting up plugins

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Setting up Singlecompile

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
