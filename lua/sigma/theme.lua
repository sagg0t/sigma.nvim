local util = require("sigma.util")
local c = require("sigma.colors")

local M = {}

---@param config Config
---@return Theme
function M.setup(config)
    config = config or require("sigma.config")

    ---@class Theme
    local theme = {}
    theme.config = config
    theme.colors = c

    local uncategorised = {
        -- glyph palette
        GlyphPalette1 = { fg = c.red2 },
        GlyphPalette2 = { fg = c.green },
        GlyphPalette3 = { fg = c.yellow },
        GlyphPalette4 = { fg = c.blue },
        GlyphPalette6 = { fg = c.green1 },
        GlyphPalette7 = { fg = c.fg },
        GlyphPalette9 = { fg = c.red },

        -- Neotest
        -- NeotestFile = { fg = c.cyan6 },
        -- NeotestTarget = { fg = "#000000" },
        -- NeotestTest = { fg = "#ffffff" },

        -- NeoVim
        healthError = { fg = c.error },
        healthSuccess = { fg = c.green1 },
        healthWarning = { fg = c.warning },
    }
    theme.base = vim.tbl_extend('force', uncategorised,
                                         require("sigma.theme.base"),
                                         require("sigma.theme.treesitter"),
                                         require("sigma.theme.nvim_tree"),
                                         require("sigma.theme.diagnostic"),
                                         require("sigma.theme.cmp"),
                                         require("sigma.theme.lsp"),
                                         require("sigma.theme.diff"),
                                         require("sigma.theme.cmake"),
                                         require("sigma.theme.python"),
                                         require("sigma.theme.markdown"),
                                         require("sigma.theme.git_signs"),
                                         require("sigma.theme.telescope"))

    if not vim.diagnostic then
        local severity_map = {
            Error = "Error",
            Warn = "Warning",
            Info = "Information",
            Hint = "Hint",
        }
        local types = { "Default", "VirtualText", "Underline" }
        for _, type in ipairs(types) do
            for snew, sold in pairs(severity_map) do
                theme.base["LspDiagnostics" .. type .. sold] = {
                    link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
                }
            end
        end
    end

    theme.defer = {}

    if config.hideInactiveStatusline then
        local inactive = { style = "underline", bg = c.bg, fg = c.bg, sp = c.gray2 }

        -- StatusLineNC
        theme.base.StatusLineNC = inactive

        -- LuaLine
        for _, section in ipairs({ "a", "b", "c" }) do
            theme.defer["lualine_" .. section .. "_inactive"] = inactive
        end
    end

    return theme
end

return M
