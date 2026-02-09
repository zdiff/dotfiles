require('vis')

vis.events.subscribe(vis.events.INIT, function()
    local lexers = vis.lexers
    local colors = {
        ['bg'] = '#141415',
        ['inactiveBg'] = '#1c1c24',
        ['fg'] = '#cdcdcd',
        ['floatBorder'] = '#878787',
        ['line'] = '#252530',
        ['comment'] = '#606079',
        ['builtin'] = '#b4d4cf',
        ['func'] = '#c48282',
        ['string'] = '#e8b589',
        ['number'] = '#e0a363',
        ['property'] = '#c3c3d5',
        ['constant'] = '#aeaed1',
        ['parameter'] = '#bb9dbd',
        ['visual'] = '#333738',
        ['error'] = '#d8647e',
        ['warning'] = '#f3be7c',
        ['hint'] = '#7e98e8',
        ['operator'] = '#90a0b5',
        ['keyword'] = '#6e94b2',
        ['type'] = '#9bb4bc',
        ['search'] = '#405065',
        ['plus'] = '#7fa563',
        ['delta'] = '#f3be7c',
    }
    lexers.colors = colors
    local fg = ',fore:'..colors.fg..','
    local bg = ',back:'..colors.bg..','
    lexers.STYLE_DEFAULT = bg..fg
    lexers.STYLE_NOTHING = bg
    lexers.STYLE_CLASS = 'fore:'..colors.type..',bold'
    lexers.STYLE_COMMENT = 'fore:'..colors.comment..',italics'
    lexers.STYLE_CONSTANT = 'fore:'..colors.constant..',bold'
    lexers.STYLE_DEFINITION = 'fore:'..colors.func
    lexers.STYLE_ERROR = 'fore:'..colors.error..',bold'
    lexers.STYLE_FUNCTION = 'fore:'..colors.func
    lexers.STYLE_KEYWORD = 'fore:'..colors.keyword
    lexers.STYLE_LABEL = 'fore:'..colors.keyword
    lexers.STYLE_NUMBER = 'fore:'..colors.number..',bold'
    lexers.STYLE_OPERATOR = 'fore:'..colors.operator
    lexers.STYLE_REGEX = 'fore:'..colors.string
    lexers.STYLE_STRING = 'fore:'..colors.string..',italics'
    lexers.STYLE_PREPROCESSOR = 'fore:'..colors.keyword
    lexers.STYLE_TAG = 'fore:'..colors.keyword
    lexers.STYLE_TYPE = 'fore:'..colors.type..',bold'
    lexers.STYLE_VARIABLE = 'fore:'..colors.property
    lexers.STYLE_WHITESPACE = 'fore:'..colors.comment
    lexers.STYLE_EMBEDDED = 'fore:'..colors.parameter
    lexers.STYLE_IDENTIFIER = 'fore:'..colors.property
    lexers.STYLE_LINENUMBER = 'fore:'..colors.comment..',back:'..colors.bg
    lexers.STYLE_CURSOR = 'fore:'..colors.bg..',back:'..colors.fg
    lexers.STYLE_CURSOR_PRIMARY = 'fore:'..colors.bg..',back:'..colors.fg
    lexers.STYLE_CURSOR_LINE = 'back:'..colors.line
    lexers.STYLE_COLOR_COLUMN = 'back:'..colors.line
    lexers.STYLE_SELECTION = 'back:'..colors.visual
    lexers.STYLE_STATUS = 'fore:'..colors.fg..',back:'..colors.line
    lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.warning..',back:'..colors.line
    lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
    lexers.STYLE_INFO = 'fore:default,back:default,bold'
    lexers.STYLE_EOF = ''
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command("set escdelay 0")
    vis:command('set expandtab')
    vis:command('set ignorecase')
    vis:command('set relativenumbers')
    vis:command('set tabwidth 4')
end)
