---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

config = {
  commentStyle = "italic",
  keywordStyle = "italic",
  hideInactiveStatusline = false,
}

return config
