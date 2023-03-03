local c = require("sigma.colors")

return {
    diffAdded = { fg = c.green1 },
    diffRemoved = { fg = c.red2 },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.yellow1 },
    diffNewFile = { fg = c.orange3 },
    diffFile = { fg = c.cyan6 },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.magenta4 },
}
