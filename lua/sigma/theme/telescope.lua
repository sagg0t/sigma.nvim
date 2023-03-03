local c = require("sigma.colors")
local config = require("sigma.config")

return {
    TelescopeBorder       = { fg = c.gray3, bg = config.transparent and c.none or c.black1 },
    TelescopeNormal       = { fg = c.fg, bg = c.black1 },
    TelescopeMatching     = { fg = c.red2 },
    TelescopePromptPrefix = { fg = c.cyan2 },
    TelescopeSelection    = { fg = c.white, bg = c.gray },
}
