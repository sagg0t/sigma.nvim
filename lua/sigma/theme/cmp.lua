local c = require("sigma.colors")
local util = require("sigma.util")

return {
    CmpDocumentation            = { fg = c.fg,          bg = c.grey },
    cCmpDocumentationBorder     = { fg = c.red,         bg = c.grey },

    CmpItemAbbr                 = { fg = c.fg,          bg = c.none },
    CmpItemAbbrDeprecated       = { fg = c.grey3,       bg = c.none, strikethrough = true },
    CmpItemAbbrMatch            = { fg = c.lightCyan,   bg = c.none },
    CmpItemAbbrMatchFuzzy       = { fg = c.lightCyan,   bg = c.none },

    CmpItemKindDefault          = { fg = c.darkCyan,    bg = c.none },
    CmpItemMenu                 = { fg = c.grey4,       bg = c.black3 },

    CmpItemKindKeyword          = { fg = c.pinkNeon,    bg = c.none },

    CmpItemKindVariable         = { fg = c.whiteIsh,    bg = c.none },
    CmpItemKindConstant         = { fg = util.darken(c.blue, 0.8), bg = c.none },
    CmpItemKindReference        = { fg = c.darkMagenta, bg = c.none },
    CmpItemKindValue            = { fg = c.darkMagenta, bg = c.none },

    CmpItemKindFunction         = { fg = c.lightCyan,   bg = c.none },
    CmpItemKindMethod           = { fg = c.lightCyan,   bg = c.none },
    CmpItemKindConstructor      = { fg = c.lightCyan,   bg = c.none },

    CmpItemKindClass            = { fg = util.darken(c.blue, 0.8), bg = c.none },
    CmpItemKindInterface        = { fg = c.orange,      bg = c.none },
    CmpItemKindStruct           = { fg = c.lightCyan,   bg = c.none },
    CmpItemKindEvent            = { fg = c.orange,      bg = c.none },
    CmpItemKindEnum             = { fg = c.orange,      bg = c.none },
    CmpItemKindUnit             = { fg = c.orange,      bg = c.none },

    CmpItemKindModule           = { fg = c.orange,      bg = c.none },

    CmpItemKindProperty         = { fg = c.lightBlue,   bg = c.none },
    CmpItemKindField            = { fg = c.green,       bg = c.none },
    CmpItemKindTypeParameter    = { fg = c.green,       bg = c.none },
    CmpItemKindEnumMember       = { fg = c.green,       bg = c.none },
    CmpItemKindOperator         = { fg = c.green,       bg = c.none },
    CmpItemKindSnippet          = { fg = util.darken(c.darkCyan, 0.8), bg = c.none },
}
