local c = require("sigma.colors")
local util = require("sigma.util")

return {
    NvimTreeNormal           = { fg = c.accent, bg = c.black2 },
    NvimTreeNormalNC         = { fg = c.accent, bg = c.black2 },
    NvimTreeGitDirty         = { fg = c.git.change },
    NvimTreeGitNew           = { fg = c.git.add },
    NvimTreeGitDeleted       = { fg = c.git.delete },
    NvimTreeCursorLine       = { fg = c.accent, bg = util.darken(c.darkCyan, 0.1) },
    NvimTreeCursorColumn     = { fg = c.black, bg = c.cyan },
    NvimTreeExecFile         = { fg = c.green },
    NvimTreeFolderIcon       = { fg = c.darkCyan },
    NvimTreeFolderName       = { fg = c.darkCyan },
    NvimTreeGitMerge         = { fg = c.diff_change },
    NvimTreeGitRenamed       = { fg = c.diff_change },
    NvimTreeGitStaged        = { fg = c.diff_add },
    NvimTreeImageFile        = { fg = c.pink },
    NvimTreeIndentMarker     = { fg = c.grey3 },
    NvimTreeOpenedFolderName = { fg = c.darkCyan, italic = true },
    NvimTreeRootFolder       = { fg = c.grey3, bold = true },
    NvimTreeSpecialFile      = { fg = c.darkOrange, underline = true },
    NvimTreeSymlink          = { fg = c.lightCyan },
    NvimTreeVertSplit        = { fg = c.grey1 },

    -- NeoTree
    NeoTreeNormal = { bg = c.black2 },
    -- NeoTreeGitIgnored = { fg = 'NONE' },
}
