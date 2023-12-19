require("mason").setup()
require("mason-lspconfig").setup()

local cmp = require('cmp')  -- Add this line to import the cmp module
local cmp_action = require("lsp-zero").cmp_action()
local lsp = require("lsp-zero")
local lspconfig = require('lspconfig')

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
	  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
	  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
	  ['<CR>'] = cmp.mapping.confirm({ select = true }),
	  ["<C-Space>"] = cmp.mapping.complete(),
	})
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

lspconfig.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 100
        }
      }
    }
  }
}
lspconfig.tsserver.setup {}
lspconfig.clangd.setup {}
lspconfig.jdtls.setup {}
lspconfig.lua_ls.setup {}

lspconfig.jsonls.setup {}
lspconfig.html.setup {}
lspconfig.cssls.setup {}

