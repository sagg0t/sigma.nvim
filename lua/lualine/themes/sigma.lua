local colors = require("sigma.colors")
local util = require("sigma.util")

local sigma = {}

sigma.normal = {
  a = { bg = colors.cyan3,  fg = colors.black, gui = "bold" },
  b = { bg = colors.black,  fg = colors.cyan3 },
  c = { bg = colors.black2, fg = colors.fg_sidebar },
}

sigma.insert = {
  a = { bg = colors.orange1, fg = colors.black, gui = "bold" },
  b = { bg = colors.black, fg = colors.orange1 },
}

sigma.command = {
  a = { bg = colors.blue1, fg = colors.black, gui = "bold" },
  b = { bg = colors.black, fg = colors.blue1 },
}

sigma.visual = {
  a = { bg = colors.magenta5, fg = colors.black, gui = "bold" },
  b = { bg = colors.black, fg = colors.magenta5 },
}

sigma.replace = {
  a = { bg = colors.pink1, fg = colors.black, gui = "bold" },
  b = { bg = colors.black, fg = colors.pink1 },
}

sigma.inactive = {
  a = { bg = colors.black2, fg = colors.gray3 },
  b = { bg = colors.black2, fg = colors.gray3, gui = "bold" },
  c = { bg = colors.black2, fg = colors.gray3 },
}

if vim.o.background == "light" then
  for _, mode in pairs(sigma) do
    for _, section in pairs(mode) do
      if section.bg then
        section.bg = util.getColor(section.bg)
      end
      if section.fg then
        section.fg = util.getColor(section.fg)
      end
    end
  end
end

if vim.g.sigma_lualine_bold then
  for _, mode in pairs(sigma) do
    mode.a.gui = "bold"
  end
end

return sigma
