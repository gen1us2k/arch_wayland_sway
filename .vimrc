set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'nsf/gocode', {'rtp': 'nvim/'}
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sensible'
Plugin 'gabrielelana/vim-markdown'
Plugin 'vim-scripts/dbext.vim'
Plugin 'posva/vim-vue'


call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
set foldmethod=indent
" See docstrings
" in folded code
let g:SimpylFold_docstring_preview=1

" Pep8
au BufNewFile,BufRead *.py setlocal
     \ tabstop=4
     \ softtabstop=4
     \ shiftwidth=4
     \ textwidth=79
     \ expandtab
     \ autoindent
     \ fileformat=unix
" JS. CSS. HTML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.js,*css,*.html setlocal
     \ tabstop=2
     \ softtabstop=2
     \ shiftwidth=2
     \ expandtab
autocmd BufRead,BufNewFile *.vue setlocal
     \ tabstop=2
     \ softtabstop=2
     \ shiftwidth=2
     \ expandtab

au BufNewFile,BufRead *go setlocal
	\ tabstop=4
	\ softtabstop=0
	\ shiftwidth=4
	\ expandtab
" Remove extra whitespaces for all files
au BufWritePre * :%s/\s\+$//e


set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" You Complete me Space+G Go-To definition
" let g:ycm_autoclose_preview_window_after_completion=1
" Disable auto complete by default. Trigger it on Ctrl+Space
" let g:ycm_auto_trigger = 1

map <leader>g  :GoDef <CR>
" Golang settings

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint']
let g:go_fmt_command = "goimports"

let g:syntastic_enable_signs = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1

"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:deoplete#enable_at_startup = 1
" Python settings
let python_highlight_all=1
syntax on
" Fix backspace
set background=dark
set backspace=2
colorscheme solarized

" Switch between Solarized themes
call togglebg#map("<F5>")

set nu
set clipboard=unnamed
set splitbelow
set splitright
let g:solarized_termcolors=256

let g:python_host_prog = '/usr/bin/python'

" Speed up python
let g:python_host_skip_check = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
