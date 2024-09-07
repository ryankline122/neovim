vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>wv', ':vsplit<CR>', { noremap = true, silent = true })

-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>wh', ':split<CR>', { noremap = true, silent = true })

-- Close current window
vim.api.nvim_set_keymap('n', '<leader>wq', ':close<CR>', { noremap = true, silent = true })

-- Jump to the next window
vim.api.nvim_set_keymap('n', '<leader>ww', '<C-w>w', { noremap = true, silent = true })

-- Jump to the previous open file
vim.api.nvim_set_keymap('n', '<leader>wp', ':bprev<CR>', { noremap = true, silent = true })

-- Kinesis specific
vim.api.nvim_set_keymap('n', '<End>', 'w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<PageDown>', 'b', { noremap = true, silent = true })


