local c = require("sigma.colors")

local sigma = {
    normal = {
        a = { fg = c.bg, bg = c.lightCyan, gui = "bold" },
        b = { fg = c.lightCyan, bg = c.overlay.bg  },
        c = { fg = c.overlay.fg, bg = c.overlay.bg },
    },

    insert = {
        a = { fg = c.bg, bg = c.orange, gui = "bold" },
        b = { fg = c.orange, bg = c.overlay.bg },
    },

    command = {
        a = { fg = c.bg, bg = c.blueIce, gui = "bold" },
        b = { fg = c.blueIce, bg = c.overlay.bg },
    },

    visual = {
        a = { fg = c.bg, bg = c.purple, gui = "bold" },
        b = { fg = c.purple, bg = c.overlay.bg },
    },

    replace = {
        a = { fg = c.bg, bg = c.pinkNeon, gui = "bold" },
        b = { fg = c.pinkNeon, bg = c.overlay.bg },
    },

    inactive = {
        a = { bg = c.bg, fg = c.fg },
        b = { bg = c.bg, fg = c.fg, gui = "bold" },
        c = { bg = c.bg, fg = c.fg },
    }
}


return sigma
