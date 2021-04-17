local util = require("sigma.util")
local theme = require("sigma.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
