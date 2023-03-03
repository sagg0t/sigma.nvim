local c = require("sigma.colors")
local config = require("sigma.config")
local util = require("sigma.util")

return {
    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    ['@annotation']         = { fg = c.yellow3 }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    ['@attribute']          = { fg = c.cyan3 }, -- (unstable) TODO: docs
    ['@boolean']            = { fg = util.lighten(c.magenta5, 0.75) }, -- For booleans.
    ['@character']          = { fg = c.green2 }, -- For characters.
    ['@comment']            = { fg = c.comment, style = config.commentStyle }, -- For comment blocks.
    ['@note']               = { fg = c.bg, bg = c.info },
    ['@warning']            = { fg = c.bg, bg = c.warning },
    ['@danger']             = { fg = c.bg, bg = c.error },
    ['@constructor']        = { fg = c.cyan3 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ['@conditional']        = { fg = c.pink1 }, -- For keywords related to conditionnals.
    ['@constant']           = { fg = c.cyan3 }, -- For constants
    ['@const.builtin']       = { fg = c.pink1 }, -- For constant that are built in the language: `nil` in Lua.
    ['@const.macro']         = { fg = c.cyan3 }, -- For constants that are defined by macros: `NULL` in C.
    ['@error']              = { fg = c.red1, bg = c.bg, gui = "undercurl" }; -- For syntax/parser errors.
    ['@exception']          = { fg = util.lighten(c.pink1, 0.9) }, -- For exception related keywords.
    rubyTSException      = { fg = util.lighten(c.pink1, 0.9) }, -- For exception related keywords.
    ['@field']              = { fg = c.blue2 }, -- For fields.
    ['@float']              = { fg = c.magenta4 }, -- For floats.
    ['@function']           = { fg = c.cyan3 }, -- For function (calls and definitions).
    ['@func.builtin']        = { fg = c.pink1 }, -- For builtin functions: `table.insert` in Lua.
    ['@func.macro']          = { fg = c.cyan2 }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    ['@include']            = { fg = c.pink1 }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ['@keyword']            = { fg = c.pink1, style = config.keywordStyle }, -- For keywords that don't fall in previous categories.
    ['@keyword.function']    = { fg = c.pink1, style = config.functionStyle }, -- For keywords used to define a fuction.
    ['@keyword.operator']    = { fg = c.cyan6, style = config.functionStyle }, -- For keywords used to define a fuction.
    ['@keyword.return']      = { fg = c.pink1, style = config.functionStyle },
    ['@label']              = { fg = c.cyan4 }, -- For labels: `label:` in C and `:label:` in Lua.
    rubyTSLabel          = { fg = util.darken(c.cyan6, 0.9) },
    ['@method']             = { fg = c.cyan3 }, -- For method calls and definitions.
    ['@namespace']          = { fg = c.cyan6 }, -- For identifiers referring to modules and namespaces.
    -- TSNone              = { },    -- TODO: docs
    ['@number']             = { fg = c.magenta4 }, -- For all numbers
    ['@operator']           = { fg = util.lighten(c.cyan3, 0.5) }, -- For any operator: `+`, but also `->` and `*` in C.
    ['@parameter']          = { fg = c.orange }, -- For parameters of a function.
    ['@parameter.reference'] = { fg = c.orange }; -- For references to parameters of a function.
    ['@property']           = { fg = c.blue2 }, -- Same as `TSField`.
    ['@punct.bracket']       = { fg = c.gray7 }, -- For brackets and parens.
    ['@punct.delimiter']     = { fg = c.gray7 }, -- For delimiters ie: `.`
    ['@punct.special']       = { fg = c.orange3 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { },    -- For keywords related to loops.
    ['@string']             = { fg = c.orange5 }, -- For strings.
    ['@string.escape']       = { fg = c.yellow4 }, -- For escape characters within a string.
    ['@string.regex']        = { fg = c.orange2 }, -- For regexes.
    ['@strong']             = { fg = c.yellow4 },
    ['@structure']          = { fg = c.red },
    ['@symbol']             = { fg = c.magenta3 }, -- For identifiers referring to symbols or atoms.
    ['@type']               = { fg = c.blue1 }, -- For types.
    cppTSType            = { fg = c.cyan3 },
    ['@type.builtin']        = { fg = c.cyan3 }, -- For builtin types.
    ['@variable']           = { fg = c.white1, style = config.variableStyle }, -- Any variable name that does not have another highlight.
    ['@variable.builtin']    = { fg = c.red3 }, -- Variable names that are defined by the languages, like `this` or `self`.

    ['@tag']           = { fg = c.blue3 }, -- Tags like html tag names.
    ['@tag.delimiter'] = { fg = c.gray3 }, -- Tag delimiter like `<` `>` `/`
    ['@tag.attribute'] = { fg = c.magenta3 },
    ['@text']          = { fg = c.fg }, -- For strings considered text in a markup language.
    ['@text.reference'] = { fg = c.cl_bg },
    ['@emphasis']      = { style = 'italic' }, -- For text to be represented with emphasis.
    ['@underline']     = { style = 'underline' }, -- For text to be represented with an underline.
    -- TSStrike            = { },    -- For strikethrough text.
    ['@title']         = { fg = c.cyan7, style = 'bold' }, -- Text that is part of a title.
    ['@literal']       = { fg = c.yellow4 }, -- Literal text.
    ['@uri']           = { fg = c.yellow4, style = 'underline' }, -- Any URI like a link or email.

    -- Lua
    -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.
}
