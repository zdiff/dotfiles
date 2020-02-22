" not compatible with vi mode
set nocompatible

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

" Always show current position
set ruler

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
let $LANG='en_US'
set langmenu=en_US
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn off backup. Files should be in version control software
set nobackup
set nowb
set noswapfile
set nowritebackup

" Use 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

set clipboard=unnamed

set number
set cursorline
highlight clear cursorline
highlight cursorlinenr ctermfg=red
