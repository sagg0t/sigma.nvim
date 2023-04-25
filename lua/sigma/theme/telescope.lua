local c = require("sigma.colors")
local config = require("sigma.config")

return {
    TelescopeBorder       = { fg = c.grey3, bg = c.black2 },
    TelescopeNormal       = { fg = c.fg, bg = c.black2 },
    TelescopeMatching     = { fg = c.red },
    TelescopePromptPrefix = { fg = c.cyanBlue },
    TelescopeSelection    = { fg = c.white, bg = c.grey },
}
