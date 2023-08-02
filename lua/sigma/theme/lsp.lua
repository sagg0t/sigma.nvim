local c = require("sigma.colors")
local util = require("sigma.util")

return {
    LspCodeLens                 = { fg = c.comment },
    LspSignatureActiveParameter = { link = "@parameter" },
    LspTroubleText              = { fg = c.whiteIsh },
    LspTroubleCount             = { fg = c.darkMagenta, bg = c.black3 },
    LspTroubleNormal            = { fg = c.accent, bg = c.black2 },

    SagaNormal                  = { bg = c.black },
    SagaBorder                  = { fg = c.black, bg = c.black },
    -- The title and the icon of a popup, like hover doc
    TitleString = { bg = c.black },
    TitleIcon = { fg = util.lighten(c.pinkNeon, 0.9), bg = c.black },
}
