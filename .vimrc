let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Setting up global variables

let g:airline_powerline_fonts = 1
let g:indent_guides_enable_on_vim_startup = 1

" Plugins Configuration

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'zah/nim.vim'
Plug 'tpope/vim-sensible'
Plug 'yggdroot/indentline'
Plug 'ycm-core/YouCompleteMe'
Plug 'ervandew/supertab'

call plug#end()

" Theming Configuration

set background=dark
colorscheme gruvbox

" Setting sane defaults

set number

" Setting up plugins

autocmd VimEnter * NERDTree
