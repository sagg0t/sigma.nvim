local c = require("sigma.colors")

return {
    LspCodeLens                 = { fg = c.comment },
    LspSignatureActiveParameter = { link = "@parameter" },
    LspTroubleText              = { fg = c.whiteIsh },
    LspTroubleCount             = { fg = c.darkMagenta, bg = c.black3 },
    LspTroubleNormal            = { fg = c.accent,      bg = c.black2 },
}
