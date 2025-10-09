set ic
set number

let g:rust_recommended_style = 0

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'christophermca/meta5'
Plug 'preservim/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'm4xshen/autoclose.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * nnoremap <Tab> :NERDTreeFocus<Enter>

nnoremap <C-O> O<C-[>O

let NERDTreeShowHidden=1

colorscheme meta5
"colorscheme tokyonight-night

set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=999

set exrc

lua package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua" ; require("luaconfig")
