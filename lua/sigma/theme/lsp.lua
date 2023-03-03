local c = require("sigma.colors")

return {
    LspCodeLens = { fg = c.comment },
    LspSignatureActiveParameter = { fg = c.blue },
    LspTroubleText = { fg = c.white1 },
    LspTroubleCount = { fg = c.magenta, bg = c.black2 },
    LspTroubleNormal = { fg = c.accent, bg = c.black1 },
}
