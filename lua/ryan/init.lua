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

vim.g.python_indent = {}

-- Indent after an open paren
vim.g.python_indent.open_paren = 'shiftwidth() * 2'

-- Indent after a nested paren
vim.g.python_indent.nested_paren = 'shiftwidth()'

-- Indent for a continuation line
vim.g.python_indent.continue = 'shiftwidth() * 2'

-- By default, the closing paren on a multiline construct lines up under the first non-whitespace character of the previous line.
-- If you prefer that it's lined up under the first character of the line that starts the multiline construct, reset this key:
vim.g.python_indent.closed_paren_align_last_line = false

-- Set a larger timeout in msec for searchpair() if necessary
vim.g.python_indent.searchpair_timeout = 500

-- Completely disable this feature if needed
vim.g.python_indent.disable_parentheses_indenting = 1
