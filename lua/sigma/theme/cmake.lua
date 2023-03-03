local c = require("sigma.colors")

return {
    cmakeCommand              = { fg = c.white },
    cmakeArguments            = { fg = c.cyan6 },
    cmakeKWvariable_watch     = { fg = c.cyan3 },
    cmakeKWproject            = { fg = c.pink1 },
    cmakeGeneratorExpressions = { fg = c.purple4 },
    cmakeVariable             = { fg = c.cyan3 },
    cmakeKWuse_mangled_mesa   = { fg = c.fg, style = 'italic' },
}
