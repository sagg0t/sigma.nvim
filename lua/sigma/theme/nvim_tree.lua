local c = require("sigma.colors")
local util = require("sigma.util")

return {
    NvimTreeNormal           = { fg = c.accent, bg = c.black1 },
    NvimTreeNormalNC         = { fg = c.accent, bg = c.black1 },
    NvimTreeGitDirty         = { fg = c.git.change },
    NvimTreeGitNew           = { fg = c.git.add },
    NvimTreeGitDeleted       = { fg = c.git.delete },
    NvimTreeCursorLine       = { fg = c.accent, bg = util.darken(c.cyan6, 0.1) },
    NvimTreeCursorColumn     = { fg = c.black, bg = c.cyan5 },
    NvimTreeExecFile         = { fg = c.green1 },
    NvimTreeFolderIcon       = { fg = c.cyan6 },
    NvimTreeFolderName       = { fg = c.cyan6 },
    NvimTreeGitMerge         = { fg = c.diff_change },
    NvimTreeGitRenamed       = { fg = c.diff_change },
    NvimTreeGitStaged        = { fg = c.diff_add },
    NvimTreeImageFile        = { fg = c.magenta2 },
    NvimTreeIndentMarker     = { fg = c.gray3 },
    NvimTreeOpenedFolderName = { fg = c.cyan6, style = 'italic' },
    NvimTreeRootFolder       = { fg = c.gray3, style = 'bold' },
    NvimTreeSpecialFile      = { fg = c.orange2, style = "underline" },
    NvimTreeSymlink          = { fg = c.cyan3 },
    NvimTreeVertSplit        = { fg = c.gray1 },

    -- NeoTree
    NeoTreeNormal = { bg = c.black1 },
    -- NeoTreeGitIgnored = { fg = 'NONE' },
}
