--
-- Treesitter Syntax Highlighting
--

require("nvim-treesitter.configs").setup 
{
    highlight = 
    {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}

--
-- WGSL Treesitter
--

vim.filetype.add({extension = {wgsl = "wgsl"}})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.wgsl = {
    install_info = {
        url = "https://github.com/szebniok/tree-sitter-wgsl",
        files = {"src/parser.c"}
    },
}

require'nvim-treesitter.configs'.setup {
    ensure_installed = {"wgsl"},
    highlight = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevelstart = 99 -- do not close folds when a buffer is opened

--
-- EBNF Treesitter 
--
require('nvim-treesitter.parsers').get_parser_configs().ebnf = {
    install_info = {
        url = 'https://github.com/RubixDev/tree-sitter-ebnf.git',
        files = { 'src/parser.c' },
        branch = 'main',
    },
}
vim.filetype.add { extension = { ebnf = 'ebnf' } }

--
-- Tokyonight Configuration
--
require("tokyonight").setup
{
    on_colors = function(colors)
    end,
}

--
-- Autoclose
--
require("autoclose").setup
{
    keys =
    {
        ["'"] = { close = false },
        ["<"] = { escape = true, close = true, pair = "<>", disabled_filetypes = {"sh", "cpp"}},
        [">"] = { escape = true },
    }
}
