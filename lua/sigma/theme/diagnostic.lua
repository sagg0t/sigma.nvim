local c = require("sigma.colors")
local util = require("sigma.util")

return {
    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError  = { fg = c.error,   bg = util.darken(c.error, 0.1) }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { fg = c.warning, bg = util.darken(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { fg = c.info,    bg = util.darken(c.info, 0.1) }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { fg = c.hint,    bg = util.darken(c.hint, 0.1) }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError    = { sp = c.error,   undercurl = true }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { sp = c.warning, undercurl = true }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { sp = c.info,    undercurl = true }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { sp = c.hint,    undercurl = true }, -- Used to underline "Hint" diagnostics
}
