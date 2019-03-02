set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Plugin 'lervag/vimtex'
Plugin 'sjl/badwolf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
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
"
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"set mouse=a
set t_Co=256
set colorcolumn=81
colorscheme badwolf
set clipboard=unnamedplus
command W w
command Q q
command Wq wq
command WQ wq

highlight ColorColumn ctermfg=Red

"highlight OverLength ctermbg=White ctermfg=Black

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
"match OverLength /\%81v.\+/
set incsearch
set hlsearch
"search highlighting
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:airline#extensions#ale#enabled = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/.ycm_extra_conf.py"

let g:ale_fixers = {'*': ['remove_trailing_lines','trim_whitespace']}
let g:ale_python_pylint_options = '--max-line-length=240'
let g:ale_python_pylint_executable = 'python3'
let g:ale_fix_on_save = 1
let g:ale_python_flake8_options = '--max-line-length=240'
highlight SignColumn ctermbg=234
highlight ALEError ctermbg = 239 cterm = none
