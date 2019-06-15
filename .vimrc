set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'lervag/vimtex'
Plugin 'sjl/badwolf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
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
"set colorcolumn=94
colorscheme badwolf
syntax on
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
"let g:ale_python_flake8_executable = python3
let g:ale_python_flake8_options = '--ignore=E303,E301,E302,E261,E262,E501,E305,W503'
highlight SignColumn ctermbg=NONE
highlight ALEError ctermbg=NONE cterm=none
"239
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
end


hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
