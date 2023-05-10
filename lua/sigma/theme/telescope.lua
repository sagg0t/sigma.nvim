local c = require("sigma.colors")

return {
    TelescopeBorder         = { fg = c.black, bg = c.black },
    TelescopeNormal         = { fg = c.fg, bg = c.black },

    TelescopePromptNormal   = { fg = c.fg, bg = c.black },
    TelescopePromptBorder   = { fg = c.black, bg = c.black },
    TelescopePromptTitle    = { fg = c.black, bg = c.black },
    TelescopePromptPrefix   = { fg = c.lightCyan },
    TelescopePromptCounter  = { link = "TelescopePromptPrefix" },

    TelescopeResultsNormal  = { bg = c.black },
    TelescopeResultsBorder  = { fg = c.black, bg = c.black },
    TelescopeResultsTitle   = { fg = c.black, bg = c.black },

    TelescopeMatching       = { fg = c.pinkNeon, bg = c.black },
    TelescopeSelection      = { fg = c.white, bg = c.grey },
    TelescopeSelectionCaret = { fg = c.pinkNeon, bg = c.grey },
}
