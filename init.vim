set ic
set number

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'christophermca/meta5'
Plug 'preservim/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'm4xshen/autoclose.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * nnoremap <Tab> :NERDTreeFocus<Enter>

let NERDTreeShowHidden=1

" colorscheme meta5

set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=999

lua require("autoclose").setup()
lua package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua" ; require("luaconfig")
