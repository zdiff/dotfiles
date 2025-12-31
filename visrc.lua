require('vis')

local lexers = vis.lexers

local colors = {
    ['base00'] = '#141415',
    ['base01'] = '#252530',
    ['base02'] = '#606079',
    ['base03'] = '#878787',
    ['base04'] = '#aeaed1',
    ['base05'] = '#cdcdcd',
    ['base06'] = '#d7d7d7',
    ['base07'] = '#d7d7d7',
    ['base08'] = '#d8647e',
    ['base09'] = '#f3be7c',
    ['base0A'] = '#f5cb96',
    ['base0B'] = '#7fa563',
    ['base0C'] = '#aeaed1',
    ['base0D'] = '#6e94b2',
    ['base0E'] = '#bb9dbd',
    ['base0F'] = '#e08398',
}

lexers.colors = colors

local fg = ',fore:'..colors.base05..','
local bg = ',back:'..colors.base00..','

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_CLASS = 'fore:'..colors.base0A
lexers.STYLE_COMMENT = 'fore:'..colors.base03..',italics'
lexers.STYLE_CONSTANT = 'fore:'..colors.base09
lexers.STYLE_DEFINITION = 'fore:'..colors.base0E
lexers.STYLE_ERROR = 'fore:'..colors.base08..',italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.base0D
lexers.STYLE_KEYWORD = 'fore:'..colors.base0E
lexers.STYLE_LABEL = 'fore:'..colors.base0A
lexers.STYLE_NUMBER = 'fore:'..colors.base09
lexers.STYLE_OPERATOR = 'fore:'..colors.base05
lexers.STYLE_REGEX = 'fore:'..colors.base0C
lexers.STYLE_STRING = 'fore:'..colors.base0B
lexers.STYLE_PREPROCESSOR = 'fore:'..colors.base0A
lexers.STYLE_TAG = 'fore:'..colors.base0A
lexers.STYLE_TYPE = 'fore:'..colors.base0A
lexers.STYLE_VARIABLE = 'fore:'..colors.base0D
lexers.STYLE_WHITESPACE = 'fore:'..colors.base02
lexers.STYLE_EMBEDDED = 'fore:'..colors.base0F
lexers.STYLE_IDENTIFIER = 'fore:'..colors.base08

lexers.STYLE_LINENUMBER = 'fore:'..colors.base02..',back:'..colors.base00
lexers.STYLE_CURSOR = 'fore:'..colors.base00..',back:'..colors.base05
lexers.STYLE_CURSOR_PRIMARY = 'fore:'..colors.base00..',back:'..colors.base05
lexers.STYLE_CURSOR_LINE = 'back:'..colors.base01
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.base01
lexers.STYLE_SELECTION = 'back:'..colors.base02
lexers.STYLE_STATUS = 'fore:'..colors.base04..',back:'..colors.base01
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.base09..',back:'..colors.base01
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_INFO = 'fore:default,back:default,bold'
lexers.STYLE_EOF = ''

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command("set escdelay 0")
    vis:command('set expandtab')
    vis:command('set ignorecase')
    vis:command('set relativenumbers')
    vis:command('set tabwidth 4')
end)
