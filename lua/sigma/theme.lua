local util = require("sigma.util")
local colors = require("sigma.colors")

local M = {}

---@param config Config
---@return Theme
function M.setup(config)
    config = config or require("sigma.config")

    ---@class Theme
    local theme = {}
    theme.config = config
    theme.colors = colors.setup(config)
    local c = theme.colors

    theme.base = {
        Directory = { fg = c.cyan6, bg = c.black1 }, -- directory names (and other special names in listings)
        DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
        DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
        DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
        DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|

        Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
        Bold = { style = "bold" },
        Italic = { style = "italic" },
        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Conceal = { fg = c.fg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = c.black2 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        -- TermCursor  = { }, -- cursor in a focused terminal
        -- TermCursorNC= { }, -- cursor in an unfocused terminal
        Comment = { fg = c.comment, style = config.commentStyle }, -- any comment
        ColorColumn = { bg = c.black2 }, -- used for the columns set with 'colorcolumn'
        Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
        lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorLine = { bg = c.black2 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        debugPC = { bg = c.cyan3 }, -- used for highlighting the current line in terminal-debug
        debugBreakpoint = { bg = util.darken(c.info, 0.1), fg = c.red1, style = "reverse" }, -- used for breakpoint colors in terminal-debug

        EndOfBuffer  = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        ErrorMsg     = { fg = c.error }, -- error messages on the command line
        FloatBorder  = { fg = c.gray3, bg = c.none },
        Folded       = { fg = c.gray2, bg = c.black2 }, -- line used for closed folds
        FoldColumn   = { bg = c.bg, fg = c.comment }, -- 'foldcolumn'
        LineNr       = { fg = c.line_fg, bg = c.line_bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.cl_bg, bg = c.line_bg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   = { fg = c.red2, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg      = { fg = c.fg, bg = c.bg, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea      = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- Area for messages and cmdline
        -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg      = { fg = c.orange2 }, -- |more-prompt|

        NonText             = { fg = c.non_text }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal              = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- normal text
        NormalNC            = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- normal text in non-current windows
        NormalSB            = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
        NormalFloat         = { fg = c.fg, bg = c.black2 }, -- Normal text in floating windows.
        Pmenu               = { bg = c.gray, fg = c.white1 }, -- Popup menu: normal item.
        PmenuSel            = { bg = util.lighten(c.gray, 0.8) }, -- Popup menu: selected item.
        PmenuSbar           = { bg = util.lighten(c.black2, 0.95) }, -- Popup menu: scrollbar.
        PmenuThumb          = { bg = c.cyan6 }, -- Popup menu: Thumb of the scrollbar.
        Question            = { fg = c.comment }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine        = { bg = c.gray1, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search              = { bg = c.green2, fg = c.bg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch           = { bg = c.green1, fg = c.bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        SpecialKey          = { fg = c.gray7, style = "bold" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        Substitute          = { bg = c.red2, fg = c.black }, -- |:substitute| replacement text highlighting
        SignColumn          = { bg = config.transparent and c.none or c.line_bg, fg = c.non_text }, -- column where |signs| are displayed
        SignColumnSB        = { bg = c.non_text, fg = c.line_bg }, -- column where |signs| are displayed
        StatusLine          = { fg = c.black2, bg = c.black2 }, -- status line of current window
        StatusLineNC        = { fg = c.gray7, bg = c.gray }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        StatusLineSeparator = { fg = c.dark },
        StatusLineTerm      = { fg = c.cyan5, bg = c.gray },
        StatusLineTermNC    = { fg = c.gray7, bg = c.gray },
        TabLine             = { fg = c.comment, bg = c.black }, -- tab pages line, not active tab page label
        TabLineFill         = { bg = c.black }, -- tab pages line, where there are no labels
        TabLineSel          = { fg = c.black, bg = c.cyan6 }, -- tab pages line, active tab page label
        Title               = { fg = c.gray7, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
        Todo                = { fg = c.yellow6, style = 'bold' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        VertSplit           = { fg = c.black, bg = c.black4 }, -- the column separating vertically split windows
        Visual              = { bg = c.gutter_bg }, -- Visual mode selection
        VisualNOS           = { fg = c.selection_fg, bg = c.selection_bg }, -- Visual mode selection when vim is "Not Owning the Selection".
        Whitespace          = { fg = c.non_text }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu            = { fg = c.fg, bg = c.black2 }, -- current match in 'wildmenu' completion


        SpellBad = { sp = c.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = { sp = c.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { sp = c.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = { sp = c.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

        Error = { fg = c.error, gui = "undercurl" }, -- (preferred) any erroneous construct
        WarningMsg = { fg = c.warning }, -- warning messages

        DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

        DiagnosticVirtualTextError = { bg = util.darken(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
        DiagnosticVirtualTextWarn = { bg = util.darken(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
        DiagnosticVirtualTextInfo = { bg = util.darken(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
        DiagnosticVirtualTextHint = { bg = util.darken(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text

        DiagnosticUnderlineError = { style = "undercurl", sp = c.error }, -- Used to underline "Error" diagnostics
        DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning }, -- Used to underline "Warning" diagnostics
        DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info }, -- Used to underline "Information" diagnostics
        DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint }, -- Used to underline "Hint" diagnostics

        LspCodeLens = { fg = c.comment },
        LspSignatureActiveParameter = { fg = c.blue },

        htmlH1 = { fg = c.magenta, style = "bold" },
        htmlH2 = { fg = c.blue, style = "bold" },
        htmlTSTag = { fg = c.cyan6, style = "bold" },


        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant  = { fg = c.white1 }, -- (preferred) any constant
        String    = { fg = c.orange5 }, --   a string constant: "this is a string"
        Character = { fg = c.green2 }, --  a character constant: 'c', '\n'
        Number    = { fg = c.magenta4 }, --   a number constant: 234, 0xff
        Boolean   = { fg = util.lighten(c.magenta5, 0.75) }, --  a boolean constant: TRUE, false
        Float     = { fg = c.magenta4 }, --    a floating point constant: 2.3e10

        Identifier = { fg = c.white1, style = config.variableStyle }, -- (preferred) any variable name
        Function = { fg = c.cyan3, style = config.functionStyle }, -- function name (also: methods for classes)

        Statement = { fg = c.pink1 }, -- (preferred) any statement
        -- Conditional   = {  }, --  if, then, else, endif, switch, etc.
        -- Repeat        = {  }, --   for, do, while, etc.
        -- Label         = {  }, --    case, default, etc.

        Operator  = { fg = c.cyan3 }, -- "sizeof", "+", "*", etc.
        Keyword   = { fg = c.cyan4, style = config.keywordStyle }, --  any other keyword
        Exception = { fg = c.cyan5 }, --  try, catch, throw

        PreProc   = { fg = c.cyan4 },    -- (preferred) generic Preprocessor
        Include   = { fg = c.pink1 },    --     preprocessor #include
        Define    = { fg = c.magenta4 }, --     preprocessor #define
        Macro     = { fg = c.magenta4 }, --     same as Define
        PreCondit = { fg = c.magenta4 }, --     preprocessor #if, #else, #endif, etc.

        Type         = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
        StorageClass = { fg = c.pink1 }, -- static, register, volatile, etc.
        Structure    = { fg = c.cyan4 }, --  struct, union, enum, etc.
        Typedef      = { fg = c.cyan4 }, --  A typedef

        Special        = { fg = c.orange3 }, -- (preferred) any special symbol
        SpecialChar    = { fg = c.gray5 }, --  special character in a constant
        Tag            = { fg = c.gray7 }, --    you can use CTRL-] on this
        Delimiter      = { fg = c.gray7 }, --  character that needs attention
        SpecialComment = { fg = c.cyan5 }, -- special things inside a comment
        Debug          = { fg = c.fg }, --    debugging statements

        cmakeCommand              = { fg = c.white },
        cmakeArguments            = { fg = c.cyan6 },
        cmakeKWvariable_watch     = { fg = c.cyan3 },
        cmakeKWproject            = { fg = c.pink1 },
        cmakeGeneratorExpressions = { fg = c.purple4 },
        cmakeVariable             = { fg = c.cyan3 },
        cmakeKWuse_mangled_mesa   = { fg = c.fg, style = 'italic' },

        pythonConditional = { fg = c.purple4 },
        pythonException   = { fg = c.purple4 },
        pythonFunction    = { fg = c.cyan3 },
        pythonInclude     = { fg = c.cyan6 },
        pythonOperator    = { fg = c.cyan3 },
        pythonStatement   = { fg = c.cyan3 },
        pythonBoolean     = { fg = c.cyan5 },


        markdownBold              = { fg = c.gray7, style = 'bold' },
        markdownCode              = { fg = c.orange3 },
        markdownCodeBlock         = { fg = c.orange3 },
        markdownUrl               = { fg = c.purple2, style = 'underline' },
        markdownCodeError         = { fg = c.red3 },
        markdownH1                = { fg = c.cyan6 },
        markdownH2                = { fg = c.cyan6 },
        markdownH3                = { fg = c.cyan6 },
        markdownH4                = { fg = c.cyan6 },
        markdownH5                = { fg = c.cyan6 },
        markdownH6                = { fg = c.cyan6 },
        markdownId                = { fg = c.purple2 },
        markdownItalic            = { gf = c.gray7, style = 'italic' },
        markdownLinkText          = { fg = c.cyan6 },
        markdownRule              = { fg = c.accent },
        markdownListMarker        = { fg = c.red1 },
        markdownHeadingDelimiter  = { fg = c.cyan6 },
        markdownHeadingRule       = { fg = c.accent },
        markdownUrlTitleDelimiter = { fg = c.cyan3 },
        markdownCodeSpecial       = { fg = c.orange2 },
        markdownCodeDelimiter     = { fg = c.green1 },
        markdownBlockquote        = { fg = c.accent },
        markdownIdDeclaration     = { fg = c.cyan6 },
        markdownIdDelimiter       = { fg = c.gray6 },
        markdownLinkDelimiter     = { fg = c.gray6 },
        markdownOrderedListMarker = { fg = c.red1 },
    }

    if not vim.diagnostic then
        local severity_map = {
            Error = "Error",
            Warn = "Warning",
            Info = "Information",
            Hint = "Hint",
        }
        local types = { "Default", "VirtualText", "Underline" }
        for _, type in ipairs(types) do
            for snew, sold in pairs(severity_map) do
                theme.base["LspDiagnostics" .. type .. sold] = {
                    link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
                }
            end
        end
    end

    theme.plugins = {

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        TSAnnotation         = { fg = c.yellow3 }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute          = { fg = c.cyan3 }, -- (unstable) TODO: docs
        TSBoolean            = { fg = util.lighten(c.magenta5, 0.75) }, -- For booleans.
        TSCharacter          = { fg = c.green2 }, -- For characters.
        TSComment            = { fg = c.comment, style = config.commentStyle }, -- For comment blocks.
        TSNote               = { fg = c.bg, bg = c.info },
        TSWarning            = { fg = c.bg, bg = c.warning },
        TSDanger             = { fg = c.bg, bg = c.error },
        TSConstructor        = { fg = c.cyan3 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConditional        = { fg = c.pink1 }, -- For keywords related to conditionnals.
        TSConstant           = { fg = c.cyan3 }, -- For constants
        TSConstBuiltin       = { fg = c.pink1 }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro         = { fg = c.cyan3 }, -- For constants that are defined by macros: `NULL` in C.
        TSError              = { fg = c.red1, bg = c.bg, gui = "undercurl" }; -- For syntax/parser errors.
        TSException          = { fg = util.lighten(c.pink1, 0.9) }, -- For exception related keywords.
        rubyTSException      = { fg = util.lighten(c.pink1, 0.9) }, -- For exception related keywords.
        TSField              = { fg = c.blue2 }, -- For fields.
        TSFloat              = { fg = c.magenta4 }, -- For floats.
        TSFunction           = { fg = c.cyan3 }, -- For function (calls and definitions).
        TSFuncBuiltin        = { fg = c.pink1 }, -- For builtin functions: `table.insert` in Lua.
        TSFuncMacro          = { fg = c.cyan2 }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude            = { fg = c.pink1 }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword            = { fg = c.pink1, style = config.keywordStyle }, -- For keywords that don't fall in previous categories.
        TSKeywordFunction    = { fg = c.pink1, style = config.functionStyle }, -- For keywords used to define a fuction.
        TSKeywordOperator    = { fg = c.cyan6, style = config.functionStyle }, -- For keywords used to define a fuction.
        TSKeywordReturn      = { fg = c.pink1, style = config.functionStyle },
        TSLabel              = { fg = c.cyan4 }, -- For labels: `label:` in C and `:label:` in Lua.
        rubyTSLabel          = { fg = util.darken(c.cyan6, 0.9) },
        TSMethod             = { fg = c.cyan3 }, -- For method calls and definitions.
        TSNamespace          = { fg = c.cyan6 }, -- For identifiers referring to modules and namespaces.
        -- TSNone              = { },    -- TODO: docs
        TSNumber             = { fg = c.magenta4 }, -- For all numbers
        TSOperator           = { fg = util.lighten(c.cyan3, 0.5) }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter          = { fg = c.orange }, -- For parameters of a function.
        TSParameterReference = { fg = c.orange }; -- For references to parameters of a function.
        TSProperty           = { fg = c.blue2 }, -- Same as `TSField`.
        TSPunctBracket       = { fg = c.gray7 }, -- For brackets and parens.
        TSPunctDelimiter     = { fg = c.gray7 }, -- For delimiters ie: `.`
        TSPunctSpecial       = { fg = c.orange3 }, -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat            = { },    -- For keywords related to loops.
        TSString             = { fg = c.orange5 }, -- For strings.
        TSStringEscape       = { fg = c.yellow4 }, -- For escape characters within a string.
        TSStringRegex        = { fg = c.orange2 }, -- For regexes.
        TSStrong             = { fg = c.yellow4 },
        TSStructure          = { fg = c.red },
        TSSymbol             = { fg = c.magenta3 }, -- For identifiers referring to symbols or atoms.
        TSType               = { fg = c.blue1 }, -- For types.
        cppTSType            = { fg = c.cyan3 },
        TSTypeBuiltin        = { fg = c.cyan3 }, -- For builtin types.
        TSVariable           = { fg = c.white1, style = config.variableStyle }, -- Any variable name that does not have another highlight.
        TSVariableBuiltin    = { fg = c.red1 }, -- Variable names that are defined by the languages, like `this` or `self`.

        TSTag           = { fg = c.gray7 }, -- Tags like html tag names.
        TSTagDelimiter  = { fg = c.gray3 }, -- Tag delimiter like `<` `>` `/`
        TSText          = { fg = c.fg }, -- For strings considered text in a markup language.
        TSTextReference = { fg = c.blue },
        TSEmphasis      = { style = 'italic' }, -- For text to be represented with emphasis.
        TSUnderline     = { style = 'underline' }, -- For text to be represented with an underline.
        -- TSStrike            = { },    -- For strikethrough text.
        TSTitle         = { fg = c.cyan7, style = 'bold' }, -- Text that is part of a title.
        TSLiteral       = { fg = c.yellow4 }, -- Literal text.
        TSURI           = { fg = c.yellow4, style = 'underline' }, -- Any URI like a link or email.

        -- Lua
        -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

        -- LspTrouble
        LspTroubleText = { fg = c.white1 },
        LspTroubleCount = { fg = c.magenta, bg = c.black2 },
        LspTroubleNormal = { fg = c.accent, bg = c.black1 },

        -- diff
        diffAdded = { fg = c.green1 },
        diffRemoved = { fg = c.red2 },
        diffChanged = { fg = c.git.change },
        diffOldFile = { fg = c.yellow1 },
        diffNewFile = { fg = c.orange3 },
        diffFile = { fg = c.cyan6 },
        diffLine = { fg = c.comment },
        diffIndexLine = { fg = c.magenta4 },

        -- GitSigns
        GitSignsAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopeBorder       = { fg = c.gray3, bg = config.transparent and c.none or c.black1 },
        TelescopeNormal       = { fg = c.fg, bg = c.black1 },
        TelescopeMatching     = { fg = c.red2 },
        TelescopePromptPrefix = { fg = c.cyan2 },
        TelescopeSelection    = { fg = c.white, bg = c.gray },

        -- NvimTree
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

        -- glyph palette
        GlyphPalette1 = { fg = c.red2 },
        GlyphPalette2 = { fg = c.green },
        GlyphPalette3 = { fg = c.yellow },
        GlyphPalette4 = { fg = c.blue },
        GlyphPalette6 = { fg = c.green1 },
        GlyphPalette7 = { fg = c.fg },
        GlyphPalette9 = { fg = c.red },

        -- WhichKey
        WhichKey = { fg = c.cyan5 },
        WhichKeyGroup = { fg = c.red3 },
        WhichKeyDesc = { fg = c.magenta3 },
        WhichKeySeperator = { fg = c.comment },
        WhichKeySeparator = { fg = c.comment },
        WhichKeyFloat = { bg = c.black2 },
        WhichKeyValue = { fg = c.magenta2 },

        -- Neotest
        -- NeotestFile = { fg = c.cyan6 },
        -- NeotestTarget = { fg = "#000000" },
        -- NeotestTest = { fg = "#ffffff" },

        -- NeoVim
        healthError = { fg = c.error },
        healthSuccess = { fg = c.green1 },
        healthWarning = { fg = c.warning },

        -- Cmp
        CmpDocumentation = { fg = c.fg, bg = c.gray },
        CmpDocumentationBorder = { fg = c.red, bg = c.gray },

        CmpItemAbbr = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated = { fg = c.gray3, bg = c.none, style = "strikethrough" },
        CmpItemAbbrMatch = { fg = c.cyan3, bg = c.none },
        CmpItemAbbrMatchFuzzy = { fg = c.cyan3, bg = c.none },

        CmpItemKindDefault = { fg = c.cyan6, bg = c.none },
        CmpItemMenu = { fg = c.gray5, bg = c.black2 },

        CmpItemKindKeyword = { fg = c.pink1, bg = c.none },

        CmpItemKindVariable = { fg = c.white1, bg = c.none },
        CmpItemKindConstant = { fg = util.darken(c.blue1, 0.8), bg = c.none },
        CmpItemKindReference = { fg = c.magenta, bg = c.none },
        CmpItemKindValue = { fg = c.magenta, bg = c.none },

        CmpItemKindFunction = { fg = c.cyan3, bg = c.none },
        CmpItemKindMethod = { fg = c.cyan3, bg = c.none },
        CmpItemKindConstructor = { fg = c.cyan3, bg = c.none },

        CmpItemKindClass = { fg = util.darken(c.blue1, 0.8), bg = c.none },
        CmpItemKindInterface = { fg = c.orange, bg = c.none },
        CmpItemKindStruct = { fg = c.cyan3, bg = c.none },
        CmpItemKindEvent = { fg = c.orange, bg = c.none },
        CmpItemKindEnum = { fg = c.orange, bg = c.none },
        CmpItemKindUnit = { fg = c.orange, bg = c.none },

        CmpItemKindModule = { fg = c.orange, bg = c.none },

        CmpItemKindProperty = { fg = c.blue2, bg = c.none },
        CmpItemKindField = { fg = c.green1, bg = c.none },
        CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
        CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
        CmpItemKindOperator = { fg = c.green1, bg = c.none },
        CmpItemKindSnippet = { fg = util.darken(c.cyan6, 0.8), bg = c.none },
    }

    theme.defer = {}

    if config.hideInactiveStatusline then
        local inactive = { style = "underline", bg = c.bg, fg = c.bg, sp = c.gray2 }

        -- StatusLineNC
        theme.base.StatusLineNC = inactive

        -- LuaLine
        for _, section in ipairs({ "a", "b", "c" }) do
            theme.defer["lualine_" .. section .. "_inactive"] = inactive
        end
    end

    return theme
end

return M
