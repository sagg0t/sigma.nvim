local theme = require("sigma.theme")

local M = {}

function M.setup()
    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "sigma"
    -- vim.api.nvim__set_hl_ns(ns)
    -- util.syntax(theme.groups)
    for group, opts in pairs(theme.groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
    -- util.autocmds(theme.config)
end

return M
