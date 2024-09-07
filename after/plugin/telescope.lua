local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
        
    local search_term = vim.fn.input("Grep > ")
    print("Searching for: " .. search_term)
    print("Current directory: " .. vim.fn.getcwd())

    builtin.grep_string({
        search = search_term,
        search_dirs = {"."}, -- Search in the current directory and all subdirectories
        use_regex = false,   -- Set to true if you want to use regex in your search
        additional_args = function()
            return {"--hidden"} -- Include hidden files. Remove if you don't want this
        end
    })
end, { desc = "Search project" })

-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
