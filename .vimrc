set number
set encoding=utf-8
set fileformats=unix,dos,mac
set modelines=0
set shiftwidth=2
set autoindent
set expandtab
set ambiwidth=double
set nosmartindent
set backspace=indent,eol,start
set hlsearch
set cursorline
set noswapfile
set clipboard+=unnamed
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
highlight CursorLine cterm=none ctermbg=236 guibg=Black
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set spelllang=cjk
setlocal spell spelllang+=en_us
" スペルチェックのハイライトを下線に
hi clear SpellBad
hi SpellBad cterm=underline
"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
