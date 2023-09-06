-- Define a Lua module for your parser
local M = {}

-- Function to parse a Latte template and extract its structure
function M.parse_template(template)
  local blocks = {}
  local currentBlock = nil

  for line in template:gmatch("[^\r\n]+") do
    -- Check for the {block} opening tag
    local block_name = line:match("{block%s+([%w_]+)}")
    if block_name then
      currentBlock = { name = block_name, content = {} }
    end

    -- Check for the {/block} closing tag
    if line:match("{/block}") then
      if currentBlock then
        table.insert(blocks, currentBlock)
        currentBlock = nil
      end
    end

    -- If inside a block, add content to the current block
    if currentBlock then
      table.insert(currentBlock.content, line)
    end
  end

  return blocks
end

-- Export the module
return M
