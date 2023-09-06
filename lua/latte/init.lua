-- Define a Lua module for your plugin
local M = {}

-- Require the Tree-sitter module
local ts = require('nvim-treesitter')

-- Define your plugin's setup function
function M.setup()
  -- Enable the Latte parser for the specified filetype(s)
  ts.ensure_installed('maintained')
  ts.setup({
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    },
  })

  -- Add any additional setup or configuration here

  -- Define your plugin's commands and key mappings
  vim.cmd([[command! LatteEnable lua require'latte'.enable()]])
  vim.cmd([[command! LatteDisable lua require'latte'.disable()]])

  -- Set up any keybindings or other configuration options

  -- Define your plugin's functions
  M.enable = function()
    -- Enable Latte template support
    -- Implement the logic to activate syntax highlighting or other features here
  end

  M.disable = function()
    -- Disable Latte template support
    -- Implement the logic to deactivate syntax highlighting or other features here
  end
end

-- Export the module
return M
