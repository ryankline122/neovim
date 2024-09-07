-- Your existing configuration
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true 
vim.o.autoindent = true 
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.wrap = false

-- New tab-related settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true



vim.o.clipboard = "unnamedplus"

-- Copying to system clipboard
-- From current cursor position to EOL (normal mode)
vim.keymap.set({'n'}, '<C-c>', '"+y$')
-- Current selection (visual mode)
vim.keymap.set({'v'}, '<C-c>', '"+y')

-- Cutting to system clipboard
-- From current cursor position to EOL (normal mode)
vim.keymap.set({'n'}, '<C-x>', '"+d$')
-- Current selection (visual mode)
vim.keymap.set({'v'}, '<C-x>', '"+d')

