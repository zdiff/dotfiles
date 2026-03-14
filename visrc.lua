require('vis')

vis.events.subscribe(vis.events.INIT, function()
    local colors = {
        bg          = '#141415',
        inactiveBg  = '#1c1c24',
        line        = '#252530',
        visual      = '#333738',
        search      = '#405065',
        fg          = '#cdcdcd',
        comment     = '#606079',
        floatBorder = '#878787',
        builtin     = '#b4d4cf',
        func        = '#c48282',
        string      = '#e8b589',
        number      = '#e0a363',
        property    = '#c3c3d5',
        constant    = '#aeaed1',
        parameter   = '#bb9dbd',
        error       = '#d8647e',
        warning     = '#f3be7c',
        hint        = '#7e98e8',
        operator    = '#90a0b5',
        keyword     = '#6e94b2',
        type        = '#9bb4bc',
        plus        = '#7fa563',
        delta       = '#f3be7c',
    }
    local lexers = vis.lexers
    lexers.colors = colors
    local bg = 'back:'..colors.bg
    local fg = 'fore:'..colors.fg

    lexers.STYLE_DEFAULT            = bg..','..fg
    lexers.STYLE_NOTHING            = bg
    lexers.STYLE_WHITESPACE         = 'fore:'..colors.comment
    lexers.STYLE_COMMENT            = 'fore:'..colors.comment..',italics'
    lexers.STYLE_STRING             = 'fore:'..colors.string..',italics'
    lexers.STYLE_NUMBER             = 'fore:'..colors.number..',bold'
    lexers.STYLE_KEYWORD            = 'fore:'..colors.keyword
    lexers.STYLE_OPERATOR           = 'fore:'..colors.operator
    lexers.STYLE_FUNCTION           = 'fore:'..colors.func
    lexers.STYLE_DEFINITION         = 'fore:'..colors.func
    lexers.STYLE_IDENTIFIER         = 'fore:'..colors.constant
    lexers.STYLE_VARIABLE           = 'fore:'..colors.constant
    lexers.STYLE_CONSTANT           = 'fore:'..colors.constant..',bold'
    lexers.STYLE_TYPE               = 'fore:'..colors.type..',bold'
    lexers.STYLE_CLASS              = 'fore:'..colors.type..',bold'
    lexers.STYLE_LABEL              = 'fore:'..colors.keyword
    lexers.STYLE_PREPROCESSOR       = 'fore:'..colors.keyword
    lexers.STYLE_TAG                = 'fore:'..colors.keyword
    lexers.STYLE_REGEX              = 'fore:'..colors.string
    lexers.STYLE_EMBEDDED           = 'fore:'..colors.parameter
    lexers.STYLE_ERROR              = fg..',back:'..colors.error..',bold'
    lexers.STYLE_LINENUMBER         = 'fore:'..colors.comment..','..bg
    lexers.STYLE_LINENUMBER_CURSOR  = fg..',back:'..colors.line
    lexers.STYLE_CURSOR             = 'fore:'..colors.bg..',back:'..colors.fg
    lexers.STYLE_CURSOR_PRIMARY     = 'fore:'..colors.bg..',back:'..colors.fg
    lexers.STYLE_CURSOR_LINE        = 'back:'..colors.line
    lexers.STYLE_COLOR_COLUMN       = 'back:'..colors.line
    lexers.STYLE_SELECTION          = 'back:'..colors.visual
    lexers.STYLE_STATUS             = fg..',back:'..colors.inactiveBg
    lexers.STYLE_STATUS_FOCUSED     = 'fore:'..colors.warning..',back:'..colors.inactiveBg
    lexers.STYLE_SEPARATOR          = lexers.STYLE_DEFAULT
    lexers.STYLE_INFO               = 'fore:default,back:default,bold'
    lexers.STYLE_EOF                = ''
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command("set escdelay 0")
    vis:command('set expandtab')
    vis:command('set ignorecase')
    vis:command('set relativenumbers')
    vis:command('set tabwidth 4')
end)
