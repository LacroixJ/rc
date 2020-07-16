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
Plugin 'dense-analysis/ale'
Plugin 'sjl/badwolf'
Plugin 'vim-airline/vim-airline'



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

"Force 256 colours
set t_Co=256

"Colourscheme for syntax highlighting
colorscheme badwolf


"smart tabbing
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"Yaml files need different tabbing.
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab



"Enable spellcheck and text wrapping for markdown files
autocmd FileType markdown setlocal tw=93 spell

"Don't use mouse, it's useless
set mouse=

syntax on
"Allow vim to use system clipboard
set clipboard=unnamedplus

"Automatically fix command typos when trying to exit or save files
command W w
command Q q
command Wq wq
command WQ wq

"Highlight any text that goes over line length
highlight ColorColumn ctermfg=Red
highlight ColorColumn ctermbg=None
highlight OverLength ctermbg=None ctermfg=Red
set cc=94

"search highlighting
set incsearch
set hlsearch

"Automatically close function header previews
let g:ycm_autoclose_preview_window_after_insertion = 1

"Add ALE support to airline
let g:airline#extensions#ale#enabled = 1

"Automatic fixes on save
let g:ale_fixers = {'*': ['remove_trailing_lines','trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_python_pylint_options = '--max-line-length=94'
let g:ale_python_pylint_executable = 'python3'

"Ignore errors that hardly affect code readability
let g:ale_python_flake8_options = '--ignore=E123,E126,E128,E303,E301,E302,E261,E262,E265,E402,E501,E305,W503,W291,W293'


set conceallevel=2

"Allow clear terminals in vim
hi! Normal ctermbg=NONE guibg=NONE
"Clear text after EOF
hi NonText ctermbg=NONE
"Add clear backround to linter errors
highlight SignColumn ctermbg=NONE
highlight ALEError ctermbg=NONE cterm=none
