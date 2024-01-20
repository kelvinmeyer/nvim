-- Setup the plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


-- run the plugin manager
require("lazy").setup({
    -- fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- colorscheme
    { "catppuccin/nvim",                  name = "catppuccin", priority = 1000 },
    -- syntax highlighting
    { "nvim-treesitter/nvim-treesitter",  build = ':TSUpdate' },
    -- undo tree
    { "mbbill/undotree" },
    -- git plugin
    { "tpope/vim-fugitive" },
    -- lsp plugins
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },
    -- which key help
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    -- hold context of whats on the screen
    { "nvim-treesitter/nvim-treesitter-context", },
    -- status line
    { 'ojroques/nvim-hardline', },
    -- comment out
    {
        'numToStr/Comment.nvim',
        opts = {
            mappings = {
                basic = false,
                extra = false,
            },
        },
        lazy = false,
    }
})
