local util = require("sigma.util")

local colors = {
    none                = "NONE",
    UNSET               = "#FF0000",

    fg                  = "#F6FADE",
    bg                  = "#161616",

    comment             = "#4C4D4D",
    context             = "#606060",
    accent              = "#BBBBBB",
    diff_add            = "#587C0C",
    diff_change         = "#0C7D9D",
    cl_bg               = "#178C94",
    diff_text           = "#265478",
    line_fg             = "#747578",
    line_bg             = "#0C0C0C",
    gutter_bg           = "#282C34",
    non_text            = "#373C45",
    selection_bg        = "#C6C6C6",
    selection_fg        = "#21252D",
    vsplit_fg           = "#CCCCCC",
    vsplit_bg           = "#21252D",
    visual_select_bg    = "#00005D",


    black               = "#000000",
    black1              = "#060606",
    black2              = "#090909",
    black3              = "#141414",

    grey                = "#21252D",
    grey1               = "#3E3E3E",
    grey2               = "#555555",
    grey3               = "#808080",
    grey4               = "#9D9797",
    grey5               = "#C8C9C1",
    grey6               = "#CCCCCC",

    whiteIsh            = "#FFFADE",
    white               = "#FFFFFF",

    redDanger           = "#FC2929",
    red                 = "#F44747",
    lightRed            = "#FF5050",

    green               = "#44B273",
    lightGreen          = "#50C16E",

    -- #448FFF
    -- #2EA4FF
    darkBlue            = "#569CD6",
    blue                = "#4FC1FF",
    blueIce             = "#51A3D6",
    lightBlue           = "#9CDCFE",

    darkOrange          = "#E25600",
    orangeDimmed        = "#ED722E",
    orange              = "#FF8000",
    lightOrange         = "#FF8800",

    -- #9C75F0
    darkMagenta         = "#8C00BF",
    magenta             = "#A333CC",
    pink                = "#D16BB7",
    pinkWarm            = "#D16D9E",
    lightPinkDimmed     = "#D68EB2",
    pinkFat             = "#ee5396",
    pinkNeon            = "#F92672",
    purple              = "#8C5EED",

    darkYellowDirty     = "#3B3B1D",
    darkYellow          = "#FFCC66",
    darkYellowDimmed    = "#D7BA7D",
    yellowNeon          = "#FFFF00",
    lightYellow         = "#FFEE99",
    lightYellowDimmed   = "#DCDCAA",

    darkCyan            = "#1D918B",
    cyan                = "#47A8A1",
    lightCyan           = "#00BFA4",
    cyanGreen           = "#5AD1AA",
    cyanBlue            = "#00DFFF",

    git = { change = "#6183BB", add = "#449DAB", delete = "#914C54", conflict = "#BB7A61" },
}

colors.error    = util.darken(colors.pinkNeon, 0.7)
colors.warning  = util.lighten(colors.orangeDimmed, 0.8)
colors.info     = util.darken(colors.cyanBlue, 0.7)
colors.hint     = colors.green

colors.diff = {
    add         = util.darken("#41A6B5", 0.15),
    delete      = util.darken("#DB4B4B", 0.15),
    change      = util.darken("#394B70", 0.15),
    text        = "#394B70",
}

colors.gitSigns = {
    add         = util.brighten("#164846", 0.2),
    change      = util.brighten("#394B70", 0.2),
    delete      = util.brighten("#823C41", 0.2),
}

util.bg = colors.bg


return colors
