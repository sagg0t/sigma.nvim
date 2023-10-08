local c = require("sigma.colors")
local util = require("sigma.util")

return {
    ["@annotation"]               = { fg = c.lightYellowDimmed }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    ["@attribute"]                = { fg = c.lightCyan },       -- (unstable) TODO: docs
    ["@boolean"]                  = { link = "Boolean" },       -- For booleans.
    ["@character"]                = { link = "Character" },     -- For characters.
    ["@comment"]                  = { link = "Comment" },       -- For comment blocks.
    ["@note"]                     = { fg = c.bg, bg = c.info },
    ["@warning"]                  = { fg = c.bg, bg = c.warning },
    ["@danger"]                   = { fg = c.bg, bg = c.error },
    ["@constructor"]              = { fg = c.lightCyan },     -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@conditional"]              = { link = "Conditional" }, -- For keywords related to conditionnals.
    ["@constant"]                 = { fg = c.lightCyan },     -- For constants
    ["@const.builtin"]            = { fg = c.pinkNeon },      -- For constant that are built in the language: `nil` in Lua.
    ["@const.macro"]              = { link = "Macro" },       -- For constants that are defined by macros: `NULL` in C.
    ["@error"]                    = { fg = c.lightPinkDimmed }, -- For syntax/parser errors.
    ["@exception"]                = { link = "Exception" },   -- For exception related keywords.
    ["@exception.ruby"]           = { fg = util.lighten(c.pinkNeon, 0.9) },
    ["@field"]                    = { fg = c.lightBlue },     -- For fields.
    ["@float"]                    = { link = "Float" },       -- For floats.
    ["@function"]                 = { link = "Function" },    -- For function (calls and definitions).
    ["@function.builtin"]         = { fg = c.purple },        -- For builtin functions: `table.insert` in Lua.
    ["@function.macro"]           = { link = "Macro" },       -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    ["@include"]                  = { link = "Include" },     -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ["@keyword"]                  = { link = "Keyword" },     -- For keywords that don"t fall in previous categories.
    -- ["@keyword.function"]       = {}, -- For keywords used to define a fuction.
    -- ["@keyword.operator"]       = { fg = c.cyan6 },
    -- ["@keyword.return"]         = { fg = c.pink1 },
    ["@label"]                    = { fg = c.cyanGreen },      -- For labels: `label:` in C and `:label:` in Lua.
    ["@label.ruby"]               = { fg = util.darken(c.darkCyan, 0.9) },
    ["@method"]                   = { fg = c.lightCyan },      -- For method calls and definitions.
    ["@namespace"]                = { fg = c.darkCyan },       -- For identifiers referring to modules and namespaces.
    -- TSNone              = { },    -- TODO: docs
    ["@number"]                   = { link = "Number" },       -- For all numbers
    ["@operator"]                 = { link = "Operator" },     -- For any operator: `+`, but also `->` and `*` in C.
    ["@parameter"]                = { fg = c.orange },         -- For parameters of a function.
    ["@parameter.reference"]      = { link = "@parameter" },   -- For references to parameters of a function.
    ["@property"]                 = { fg = c.lightBlue },      -- Same as `TSField`.
    ["@property.toml"]            = { fg = c.grey6 },
    ["@punctuation.bracket"]      = { fg = c.grey6 },          -- For brackets and parens.
    ["@punctuation.bracket.toml"] = { fg = c.grey3 },          -- For brackets and parens.
    ["@punctuation.delimiter"]    = { fg = c.grey6 },          -- For delimiters ie: `.`
    ["@punctuation.special"]      = { fg = c.orangeDimmed },   -- For special unctuation that does not fall in the catagories before.
    ["@repeat"]                   = { link = "Repeat" },       -- For keywords related to loops.
    ["@string"]                   = { link = "String" },       -- For strings.
    ["@string.escape"]            = { fg = c.darkYellowDimmed }, -- For escape characters within a string.
    ["@string.regex"]             = { fg = c.darkOrange },     -- For regexes.
    ["@strong"]                   = { fg = c.darkYellowDimmed },
    ["@structure"]                = { fg = c.UNSET },
    ["@symbol"]                   = { fg = c.pinkWarm },             -- For identifiers referring to symbols or atoms.
    ["@type"]                     = { link = "Type" },               -- For types.
    ["@type.toml"]                = { fg = c.gold },
    ["@type.builtin"]             = { fg = c.pinkFat, italic = true }, -- For builtin types.
    ["@type.qualifier"]           = { fg = c.pinkNeon },
    ["@type.definition"]          = { link = "Typedef" },
    ["@variable"]                 = { link = "Identifier" },                     -- Any variable name that does not have another highlight.
    ["@variable.builtin"]         = { fg = c.lightRed },                         -- Variable names that are defined by the languages, like `this` or `self`.

    ["@tag"]                      = { link = "Tag" },                            -- Tags like html tag names.
    ["@tag.delimiter"]            = { fg = c.grey3 },                            -- Tag delimiter like `<` `>` `/`
    ["@tag.attribute"]            = { fg = c.pinkWarm },
    ["@text"]                     = { fg = c.fg },                               -- For strings considered text in a markup language.
    ["@text.reference"]           = { fg = c.cl_bg },
    ["@emphasis"]                 = { italic = true },                           -- For text to be represented with emphasis.
    ["@underline"]                = { link = "Underline" },                      -- For text to be represented with an underline.
    -- TSStrike            = { },    -- For strikethrough text.
    ["@title"]                    = { fg = c.UNSET, bold = true },               -- Text that is part of a title.
    ["@literal"]                  = { fg = c.darkYellowDimmed },                 -- Literal text.
    ["@uri"]                      = { fg = c.darkYellowDimmed, underline = true }, -- Any URI like a link or email.

    ["@lsp.type.class"]           = { fg = c.blueIce },
    ["@lsp.type.struct"]          = { link = "@lsp.type.class" },
    ["@lsp.type.property"]        = { link = "@property" },
    ["@lsp.type.parameter"]       = { link = "@parameter" },
    ["@lsp.type.namespace"]       = { link = "@namespace" },
}
