local c = require("sigma.colors")
local util = require("sigma.util")

return {
    CmpDocumentation = { fg = c.fg, bg = c.gray },
    CmpDocumentationBorder = { fg = c.red, bg = c.gray },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.gray3, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.cyan3, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.cyan3, bg = c.none },

    CmpItemKindDefault = { fg = c.cyan6, bg = c.none },
    CmpItemMenu = { fg = c.gray5, bg = c.black2 },

    CmpItemKindKeyword = { fg = c.pink1, bg = c.none },

    CmpItemKindVariable = { fg = c.white1, bg = c.none },
    CmpItemKindConstant = { fg = util.darken(c.blue1, 0.8), bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },

    CmpItemKindFunction = { fg = c.cyan3, bg = c.none },
    CmpItemKindMethod = { fg = c.cyan3, bg = c.none },
    CmpItemKindConstructor = { fg = c.cyan3, bg = c.none },

    CmpItemKindClass = { fg = util.darken(c.blue1, 0.8), bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.cyan3, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },

    CmpItemKindModule = { fg = c.orange, bg = c.none },

    CmpItemKindProperty = { fg = c.blue2, bg = c.none },
    CmpItemKindField = { fg = c.green1, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
    CmpItemKindOperator = { fg = c.green1, bg = c.none },
    CmpItemKindSnippet = { fg = util.darken(c.cyan6, 0.8), bg = c.none },
}
