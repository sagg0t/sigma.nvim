local util = require("sigma.util")
local c = require("sigma.colors")
local config = require("sigma.config")

local theme = {}
theme.config = config
theme.colors = c

local uncategorised = {
    -- glyph palette
    GlyphPalette1       = { fg = c.redDanger },
    GlyphPalette2       = { fg = c.redDanger },
    GlyphPalette3       = { fg = c.redDanger },
    GlyphPalette4       = { fg = c.redDanger },
    GlyphPalette6       = { fg = c.redDanger },
    GlyphPalette7       = { fg = c.redDanger },
    GlyphPalette9       = { fg = c.redDanger },

    -- Neotest
    -- NeotestFile         = { fg = c.cyan6 },
    -- NeotestTarget       = { fg = "#000000" },
    -- NeotestTest         = { fg = "#ffffff" },

    -- NeoVim
    healthError         = { fg = c.error },
    healthSuccess       = { fg = c.green },
    healthWarning       = { fg = c.warning },
}

theme.groups = vim.tbl_extend('force', uncategorised,
                                       require("sigma.theme.base"),
                                       require("sigma.theme.treesitter"),
                                       require("sigma.theme.nvim_tree"),
                                       require("sigma.theme.neotree"),
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

return theme
