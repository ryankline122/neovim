require("ryan")
require("ryan.remap")

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

local plugins = {
	{'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{'tpope/vim-fugitive'},
	{'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
}

local options = {}

require("lazy").setup(plugins, options)