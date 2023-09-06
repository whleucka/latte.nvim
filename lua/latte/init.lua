-- Define a function to apply regex-based syntax highlighting for Latte templates
function HighlightLatteSyntax()
  -- Define regex patterns and highlight groups
  local patterns = {
    { "\\({block\\s\\+[^}]*}\\)\\|{\\/block}", "latteBlock" },
    -- Add more patterns as needed
  }

  for _, pattern in pairs(patterns) do
    local regex, highlight_group = pattern[1], pattern[2]
    vim.cmd(string.format([[syntax match %s /%s/]], highlight_group, regex))
  end

  vim.api.nvim_buf_set_option(0, 'filetype', 'html')
end

-- Automatically apply Latte syntax highlighting for .latte files
vim.cmd([[autocmd BufRead,BufNewFile *.latte lua HighlightLatteSyntax()]])

-- Define Latte template highlight groups and set colors
vim.cmd("highlight link latteBlock Function")
