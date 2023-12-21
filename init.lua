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
	{'nvim-telescope/telescope-ui-select.nvim'},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'patstockwell/vim-monokai-tasty'},
	{'tpope/vim-fugitive'},
	{'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'mfussenegger/nvim-jdtls'},
	{'L3MON4D3/LuaSnip'},
	{'nvim-tree/nvim-tree.lua'},
	{'nvim-tree/nvim-web-devicons'},
	{'numToStr/Comment.nvim',opts = {}, lazy = false},
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    {'rebelot/terminal.nvim', config = function() require("terminal").setup() end}
}

local options = {}

require("lazy").setup(plugins, options)
vim.cmd('colorscheme vim-monokai-tasty')
