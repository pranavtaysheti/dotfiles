" Plugins Configuration

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible'
" Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" Theming Configuration

set background=dark
colorscheme gruvbox

" Setting sane defaults

set number

" Setting up plugins

autocmd VimEnter * NERDTree

let g:indent_guides_enable_on_vim_startup = 1

