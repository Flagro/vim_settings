set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" File explorer inside vim:
"Plugin 'preservim/nerdtree'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
let g:UltiSnipsExpandTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/my-snippets/UltiSnips']

" path to the clang library:
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
" path to the python:
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'
""let g:loaded_python_provider = 0
""let g:loaded_python3_provider = 0
let g:clang_user_options='|| exit 0'

" YCM settings
"let g:ycm_enable_diagnostic_signs = 0
let g:ycm_error_symbol = 'X'
let g:ycm_warning_symbol = 'X'

" basic settings:
set tabstop=4
set shiftwidth=4
language en_US
syntax enable
set showcmd                " showing last commands
set encoding=utf-8         " encoding is utf8
set expandtab              " spaces instead of the tabs
set number
set backspace=indent,eol,start
set visualbell t_vb=       " turn off error beep/flash
set novisualbell           " turn off visual bell
set belloff=all
set signcolumn=yes
colorscheme molokai 

" auto-close:
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
set completeopt-=preview
