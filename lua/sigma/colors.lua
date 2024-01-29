local u = require("sigma.util")

local colors = {
    none = "NONE",

    fg = "#D4D8C0",
    bg = "#1a1a1a",

    selection = "#282C34",

    overlay = {
        fg = "#747578",
        bg = "#0C0C0C",
        accent = "#178C94",
        light = {
            bg = "#2D2D2D"
        },
    },

    severity = {
        error = u.darken("#F92672", 0.7),
        warning = u.lighten("#ED722E", 0.8),
        info = u.darken("#00DFFF", 0.7),
        hint = "#44B273",
    },

    git = {
        add = "#266d6a",
        change = "#536c93",
        delete = "#b2555b",
        conflict = "#BB7A61",
    },

    white = "#ffffff",
    whiteIsh = "#d2d2c6",

    invisibleGrey = "#686868",
    greyMid = "#373C45",

    darkPink = "#341827",
    pinkNeon = "#dc3c70",
    pinkWarm = "#D16D9E",
    pinkDimmed = "#D68EB2",

    deadCyan = "#161C1C",
    bleachedCyan = "#a1bebf",
    lightCyan = "#33998a",
    darkCyan = "#115f57",

    green = "#6bae86",

    lightYellow = "#FFEE99",
    orange = "#d26619",
    orangeDimmed = "#db8043",

    -- darkSea = "#345d89",
    darkBlue = "#569CD6",
    blueIce = "#58a3cf",
    lightBlue = "#7aaeb8",

    lightPurple = "#a285ea",
    purple = "#a471ef",
    magenta = "#A333CC",
}

return colors
