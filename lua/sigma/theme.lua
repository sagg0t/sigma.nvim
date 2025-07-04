local theme = {}

theme.colors = require("sigma.colors")

local uncategorised = {
    UNSET = {
        fg = "#0000FF",
        bg = "#FF0000",
        bold = true,
    }
}

theme.groups = vim.tbl_extend('force', uncategorised,
    require("sigma.theme.base"),
    require("sigma.theme.legacy"),
    require("sigma.theme.cmake"),
    require("sigma.theme.cmp"),
    require("sigma.theme.dap"),
    require("sigma.theme.diagnostic"),
    require("sigma.theme.snacks"),
    require("sigma.theme.ibl"),
    require("sigma.theme.telescope"),
    require("sigma.theme.which_key"),
    require("sigma.theme.treesitter"),
    require("sigma.theme.neotest"))

return theme
