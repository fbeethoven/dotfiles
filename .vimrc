syntax on
set number relativenumber
set showcmd
set path+=**
set wildmenu
"set wildmode=longest:list,full
set tabstop=4  softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set nowrap
set noswapfile
set incsearch
set scrolloff=15

inoremap ii  <Esc>

augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
augroup END

call plug#begin('~/.vim/plugged')
"Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox' 
call plug#end()

"colorscheme nord
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

let mapleader=" "
nnoremap <leader>h  <C-w>h
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>l <C-w>l
nnoremap <leader>; <C-w>;
nnoremap <leader>t :NERDTreeToggle<CR>
