local c = require("sigma.colors")

return {
    diffAdded       = { fg = c.green },
    diffRemoved     = { fg = c.red },
    diffChanged     = { fg = c.git.change },
    diffOldFile     = { fg = c.darkYellow },
    diffNewFile     = { fg = c.orangeDimmed },
    diffFile        = { fg = c.darkCyanyan },
    diffLine        = { fg = c.comment },
    diffIndexLine   = { fg = c.lightPinkDimmed },
}
