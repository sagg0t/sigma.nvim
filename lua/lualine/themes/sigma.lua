local c = require("sigma.colors")

local sigma = {
    normal = {
        a = { bg = c.lightCyan,     fg = c.black, gui = "bold" },
        b = { bg = c.black,         fg = c.lightCyan },
        c = { bg = c.black3,        fg = c.fg_sidebar },
    },

    insert = {
        a = { bg = c.lightOrange,   fg = c.black, gui = "bold" },
        b = { bg = c.black,         fg = c.lightOrange },
    },

    command = {
        a = { bg = c.blueIce,       fg = c.black, gui = "bold" },
        b = { bg = c.black,         fg = c.blueIce },
    },

    visual = {
        a = { bg = c.purple,        fg = c.black, gui = "bold" },
        b = { bg = c.black,         fg = c.purple },
    },

    replace = {
        a = { bg = c.pinkNeon,      fg = c.black, gui = "bold" },
        b = { bg = c.black,         fg = c.pinkNeon },
    },

    inactive = {
        a = { bg = c.black3,        fg = c.grey3 },
        b = { bg = c.black3,        fg = c.grey3, gui = "bold" },
        c = { bg = c.black3,        fg = c.grey3 },
    }
}


return sigma
