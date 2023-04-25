local c = require("sigma.colors")
local util = require("sigma.util")

return {
    Directory           = { fg = c.darkCyan, bg = c.black3 }, -- directory names (and other special names in listings)
    DiffAdd             = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange          = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete          = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText            = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|

    Underlined          = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold                = { bold = true },
    Italic              = { italic = true },
    -- ("Ignore", be    low, may be invisible...)
    -- Ignore = { },     -- (preferred) left blank, hidden  |hl-Ignore|

    Conceal             = { fg = c.fg }, -- placeholder characters substituted for concealed text (see "conceallevel")
    Cursor              = { fg = c.bg, bg = c.fg }, -- character under the cursor
    CursorIM            = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    lCursor             = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see "guicursor")
    ColorColumn         = { bg = c.black3 }, -- used for the columns set with "colorcolumn"
    CursorLine          = { link = "ColorColumn" }, -- Screen-line at the cursor, when "cursorline" is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn        = { link = "ColorColumn" }, -- Screen-column at the cursor, when "cursorcolumn" is set.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    Comment             = { fg = c.comment, italic = true }, -- any comment
    debugPC             = { bg = c.lightCyan }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint     = { bg = util.darken(c.info, 0.1), fg = c.lightRed, reverse = true }, -- used for breakpoint colors in terminal-debug

    EndOfBuffer         = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg            = { fg = c.error }, -- error messages on the command line
    FloatBorder         = { fg = c.grey3, bg = c.none },
    Folded              = { fg = c.grey2, bg = c.black1 }, -- line used for closed folds
    FoldColumn          = { fg = c.comment, bg = c.bg }, -- "foldcolumn"
    LineNr              = { fg = c.line_fg, bg = c.line_bg }, -- Line number for ":number" and ":#" commands, and when "number" or "relativenumber" option is set.
    CursorLineNr        = { fg = c.cl_bg, bg = c.line_bg }, -- Like LineNr when "cursorline" or "relativenumber" is set for the cursor line.
    MatchParen          = { fg = c.red, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg             = { fg = c.fg, bg = c.bg, bold = true }, -- "showmode" message (e.g., "-- INSERT -- ")
    MsgArea             = { fg = c.fg, bg = c.bg }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of "display"
    MoreMsg             = { fg = c.darkOrange }, -- |more-prompt|

    NonText             = { fg = c.non_text }, -- "@" at the end of the window, characters from "showbreak" and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn"t fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal              = { fg = c.fg, bg = c.bg }, -- normal text
    NormalNC            = { link = "Normal" }, -- normal text in non-current windows
    NormalSB            = { link = "Normal" }, -- normal text in non-current windows
    NormalFloat         = { fg = c.fg, bg = c.black1 }, -- Normal text in floating windows.
    Pmenu               = { bg = c.grey, fg = c.whiteIsh }, -- Popup menu: normal item.
    PmenuSel            = { bg = util.lighten(c.grey, 0.8) }, -- Popup menu: selected item.
    PmenuSbar           = { bg = util.lighten(c.black1, 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb          = { bg = c.darkCyan }, -- Popup menu: Thumb of the scrollbar.
    Question            = { fg = c.comment }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine        = { bg = c.grey1, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search              = { bg = c.green2, fg = c.bg }, -- Last search pattern highlighting (see "hlsearch").  Also used for similar items that need to stand out.
    IncSearch           = { bg = c.green1, fg = c.bg }, -- "incsearch" highlighting; also used for the text replaced with ":s///c"
    SpecialKey          = { fg = c.grey6, bold = true }, -- Unprintable characters: text displayed differently from what it really is.  But not "listchars" whitespace. |hl-Whitespace|
    Substitute          = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
    SignColumn          = { bg = c.line_bg, fg = c.non_text }, -- column where |signs| are displayed
    SignColumnSB        = { bg = c.non_text, fg = c.line_bg }, -- column where |signs| are displayed
    StatusLine          = { fg = c.black1, bg = c.black1 }, -- status line of current window
    StatusLineNC        = { fg = c.grey6, bg = c.grey }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineSeparator = { fg = c.dark },
    StatusLineTerm      = { fg = c.cyan, bg = c.grey },
    StatusLineTermNC    = { fg = c.grey6, bg = c.grey },
    TabLine             = { fg = c.comment, bg = c.black }, -- tab pages line, not active tab page label
    TabLineFill         = { bg = c.black }, -- tab pages line, where there are no labels
    TabLineSel          = { fg = c.black, bg = c.darkCyan }, -- tab pages line, active tab page label
    Title               = { fg = c.grey6, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Todo                = { fg = c.darkYellowDirty, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    VertSplit           = { fg = c.black, bg = c.black1 }, -- the column separating vertically split windows
    Visual              = { bg = c.gutter_bg }, -- Visual mode selection
    VisualNOS           = { fg = c.selection_fg, bg = c.selection_bg }, -- Visual mode selection when vim is "Not Owning the Selection".
    Whitespace          = { fg = c.non_text }, -- "nbsp", "space", "tab" and "trail" in "listchars"
    WildMenu            = { fg = c.fg, bg = c.black1 }, -- current match in "wildmenu" completion


    SpellBad            = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap            = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal          = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare           = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    Error               = { fg = c.error, undercurl = true }, -- (preferred) any erroneous construct
    WarningMsg          = { fg = c.warning }, -- warning messages

    htmlH1              = { fg = c.magenta, bold = true },
    htmlH2              = { fg = c.blue, bold = true },
    htmlTSTag           = { fg = c.darkCyan, bold = true },


    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant            = { fg = c.cyan }, -- (preferred) any constant
    String              = { fg = c.lightYellow }, --   a string constant: "this is a string"
    Character           = { fg = c.lightGreen }, --  a character constant: "c", "\n"
    Number              = { fg = c.lightPinkDimmed }, --   a number constant: 234, 0xff
    Boolean             = { fg = util.lighten(c.magenta, 0.75) }, --  a boolean constant: TRUE, false
    Float               = { fg = c.lightPinkDimmed }, --    a floating point constant: 2.3e10

    Identifier          = { fg = c.whiteIsh }, -- (preferred) any variable name
    Function            = { fg = c.lightCyan }, -- function name (also: methods for classes)

    Statement           = { fg = c.pinkNeon }, -- (preferred) any statement
    -- Conditional         = {  }, --  if, then, else, endif, switch, etc.
    -- Repeat              = {  }, --   for, do, while, etc.
    -- Label               = {  }, --    case, default, etc.

    Operator            = { fg = util.lighten(c.lightCyan, 0.5) }, -- "sizeof", "+", "*", etc.
    Keyword             = { fg = c.pinkNeon, italic = true }, --  any other keyword
    Exception           = { fg = util.lighten(c.pinkNeon, 0.9) }, --  try, catch, throw

    PreProc             = { fg = c.cyanGreen },    -- (preferred) generic Preprocessor
    Include             = { fg = c.pinkNeon },    --     preprocessor #include
    Define              = { fg = c.lightPinkDimmed }, --     preprocessor #define
    Macro               = { fg = c.lightPinkDimmed }, --     same as Define
    PreCondit           = { fg = c.lightPinkDimmed }, --     preprocessor #if, #else, #endif, etc.

    Type                = { fg = c.blueIce }, -- (preferred) int, long, char, etc.
    StorageClass        = { fg = c.pinkNeon }, -- static, register, volatile, etc.
    Structure           = { fg = c.cyanGreen }, --  struct, union, enum, etc.
    Typedef             = { fg = c.cyanGreen }, --  A typedef

    Special             = { fg = c.orangeDimmed }, -- (preferred) any special symbol
    SpecialChar         = { fg = c.grey4 }, --  special character in a constant
    Tag                 = { fg = c.darkBlue }, --    you can use CTRL-] on this
    Delimiter           = { fg = c.grey6 }, --  character that needs attention
    SpecialComment      = { fg = c.cyan }, -- special things inside a comment
    Debug               = { fg = c.fg }, --    debugging statements
}
