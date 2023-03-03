local c = require("sigma.colors")
local config = require("sigma.config")
local util = require("sigma.util")

return {
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
}
