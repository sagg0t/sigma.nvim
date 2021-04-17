local util = require("sigma.util")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
    config = config or require("sigma.config")

    -- Color Palette
    ---@class ColorScheme
    local colors = {
        none = "NONE",

        fg = "#f6fade",
        bg = "#161616",

        comment          = "#4c4d4d",
        context          = '#606060',
        accent           = '#BBBBBB',
        diff_add         = '#587c0c',
        diff_change      = '#0c7d9d',
        cl_bg            = "#178c94",
        diff_text        = '#265478',
        line_fg          = "#747578",
        line_bg          = "#0c0c0c",
        gutter_bg        = "#282c34",
        non_text         = "#373C45",
        selection_bg     = "#c6c6c6",
        selection_fg     = "#21252D",
        vsplit_fg        = "#cccccc",
        vsplit_bg        = "#21252D",
        visual_select_bg = "#00005d",


        black  = "#000000",
        black1 = "#090909",
        black2 = "#141414",
        black3 = "#0f0f0f",
        black4 = "#060606",

        red  = "#FF0000",
        red1 = "#FC2929",
        red2 = '#F44747',
        red3 = "#FF5050",
        red4 = '#94151b',
        red5 = "#5D0000",

        green  = "#00FF00",
        green1 = "#44B273",
        green2 = "#50C16E",
        green3 = '#B5CEA8',

        blue  = "#0000FF",
        blue1 = '#4FC1FF',
        blue2 = '#9CDCFE',

        white  = "#FFFFFF",
        white1 = "#FFFADE",

        gray  = "#21252D",
        gray1 = '#3e3e3e',
        gray2 = "#555555",
        gray3 = '#808080',
        gray4 = "#8C8C8C",
        gray5 = "#9d9797",
        gray6 = '#C8C9C1',
        gray7 = "#CCCCCC",

        orange  = "#FF8000",
        orange1 = '#FF8800',
        orange2 = "#E25600",
        orange3 = "#ED722E",
        orange4 = '#613214',
        orange5 = "#FFEE99",
        orange6 = "#2f2905",

        pink  = "#FF80FF",
        pink1 = "#F92672",
        pink2 = "#C586C0",
        pink3 = "#AF00DB",

        magenta  = "#8C00BF",
        magenta2 = "#D16BB7",
        magenta3 = '#D16D9E',
        magenta4 = "#D68EB2",
        magenta5 = "#A333CC",

        yellow  = "#FFFF00",
        yellow1 = '#FFCC66',
        yellow2 = "#FFEE79",
        yellow3 = '#DCDCAA',
        yellow4 = '#D7BA7D',
        yellow5 = "#444400",
        yellow6 = "#3B3B1D",

        cyan  = "#00FFFF",
        cyan2 = "#00DFFF",
        cyan3 = "#00BFA4",
        cyan4 = "#5AD1AA",
        cyan5 = "#47A8A1",
        cyan6 = "#1D918B",

        git = { change = "#6183bb", add = "#449dab", delete = "#914c54", conflict = "#bb7a61" },
        gitSigns = { add = "#164846", change = "#394b70", delete = "#823c41" },
    }

    colors.error = util.darken(colors.pink1, 0.7)
    colors.warning = util.lighten(colors.orange3, 0.8)
    colors.info = util.darken(colors.cyan2, 0.7)
    colors.hint = colors.green1


    util.bg = colors.bg

    colors.diff = {
        add = util.darken("#41a6b5", 0.15),
        delete = util.darken("#db4b4b", 0.15),
        change = util.darken("#394b70", 0.15),
        text = "#394b70",
    }

    colors.gitSigns = {
        add = util.brighten(colors.gitSigns.add, 0.2),
        change = util.brighten(colors.gitSigns.change, 0.2),
        delete = util.brighten(colors.gitSigns.delete, 0.2),
    }

    colors.git.ignore = colors.dark3

    return colors
end

return M
