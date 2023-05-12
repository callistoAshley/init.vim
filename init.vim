set ic
set number

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'christophermca/meta5'
Plug 'preservim/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'm4xshen/autoclose.nvim'
call plug#end()

autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * nnoremap <Tab> :NERDTreeFocus<Enter>

let NERDTreeShowHidden=1

" colorscheme meta5

set tabstop=4
set shiftwidth=4
set expandtab

lua require("autoclose").setup()
