-- Define a Lua module for your highlighter
local M = {}

-- Require the Tree-sitter module for highlighting
local ts = require('nvim-treesitter')

-- Define the highlight groups for Latte templates
local highlight = {
  latteBlock = { fg = 'Yellow' },
  latteContent = { fg = 'White' },
  -- Add more highlight groups as needed
}

-- Define the rules for syntax highlighting using Tree-sitter queries
local queries = {
  latteBlock = [[
    (block (block_name) @latteBlock
      (block_content) @latteContent
    )
  ]],
  -- Add more queries for other Latte template elements
}

-- Function to apply syntax highlighting
function M.setup()
  local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
  parser_config.latte = {
    install_info = {
      url = 'https://github.com/your-repo/latte-treesitter', -- Replace with your grammar repo
      files = {'src/parser.c'},
      -- Add any other necessary configuration options
    },
    filetype = 'latte', -- The filetype you want to associate with Latte templates
  }

  ts.highlighter.new(M, queries)
  ts.highlighter.active[1]:use_plugin_parser('latte')
  ts.highlighter.active[1]:highlight('latteBlock', highlight.latteBlock)
  ts.highlighter.active[1]:highlight('latteContent', highlight.latteContent)
  -- Add more highlights as needed
end

-- Export the module
return M
