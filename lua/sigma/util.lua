local hsluv = require("sigma.hsluv")

local util = {}

util.colorsUsed = {}
util.colorCache = {}

util.bg = "#000000"
util.fg = "#ffffff"
util.day_brightness = 0.3

local function hexToRgb(hex_str)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function util.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function util.darken(hex, amount, bg)
  return util.blend(hex, bg or util.bg, math.abs(amount))
end
function util.lighten(hex, amount, fg)
  return util.blend(hex, fg or util.fg, math.abs(amount))
end

function util.brighten(color, percentage)
  local hsl = hsluv.hex_to_hsluv(color)
  local larpSpace = 100 - hsl[3]
  if percentage < 0 then
    larpSpace = hsl[3]
  end
  hsl[3] = hsl[3] + larpSpace * percentage
  return hsluv.hsluv_to_hex(hsl)
end

function util.invertColor(color)
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[3] = 100 - hsl[3]
    if hsl[3] < 40 then
      hsl[3] = hsl[3] + (100 - hsl[3]) * util.day_brightness
    end
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

function util.randomColor(color)
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[1] = math.random(1, 360)
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

function util.getColor(color)
  if vim.o.background == "dark" then
    return color
  end
  if not util.colorCache[color] then
    util.colorCache[color] = util.invertColor(color)
  end
  return util.colorCache[color]
end

function util.debug(colors)
  colors = colors or require("sigma.colors")
  -- Dump unused colors
  for name, color in pairs(colors) do
    if type(color) == "table" then
      util.debug(color)
    else
      if util.colorsUsed[color] == nil then
        print("not used: " .. name .. " : " .. color)
      end
    end
  end
end

---@param config Config
function util.autocmds(config)
  vim.cmd([[augroup Sigma]])
  vim.cmd([[  autocmd!]])
  vim.cmd([[  autocmd ColorScheme * lua require("sigma.util").onColorScheme()]])
  vim.cmd([[augroup end]])
end

function util.light_colors(colors)
  if type(colors) == "string" then
    return util.getColor(colors)
  end
  local ret = {}
  for key, value in pairs(colors) do
    ret[key] = util.light_colors(value)
  end
  return ret
end

function util.random()
  local colors = {}
  for hl_name, hl in pairs(vim.api.nvim__get_hl_defs(0)) do
    local def = {}
    for key, def_key in pairs({ foreground = "fg", background = "bg", special = "sp" }) do
      if type(hl[key]) == "number" then
        local hex = string.format("#%06x", hl[key])
        local color = colors[hex] and colors[hex] or util.randomColor(hex)
        colors[hex] = color
        table.insert(def, "gui" .. def_key .. "=" .. color)
      end
    end
    if hl_name ~= "" and #def > 0 then
      for _, style in pairs({ "bold", "italic", "underline", "undercurl", "reverse" }) do
        if hl[style] then
          table.insert(def, "gui=" .. style)
        end
      end

      vim.cmd("highlight! " .. hl_name .. " " .. table.concat(def, " "))
    end
  end
end

return util
