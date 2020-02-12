set nocompatible
filetype off
set encoding=utf-8
set nu

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --go-completer --rust-completer'}
Plugin 'SirVer/ultisnips'

" Plugin 'git://git.wincent.com/ command-t.git'


call vundle#end()
filetype plugin indent on

syntax enable

" let g:syntastic_python_python_exec = 'python3'
" let g:UltiSnipsSnippetsDir = [g:spacevim_dir.'/private/UltiSnips', g:spacevim_plug_home.'vim-snippets/UltiSnips/']
let g:python3_host_prog = '/usr/bin/python3.7'
let g:pymode_python = 'python3'

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
set foldmethod=indent
set foldlevel=99
let g:SimplyFold_docstring_preview=1

nnoremap <space> za

" au BufNewFile,BufRead *.py
"	\ set tabstop=4
"	\ set softtabstop=4
"	\ set shiftwidth=4
"	\ set textwidth=79
"	\ set expandtab
"	\ set autoindent
"	\ set fileformat=unix

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on

" colorschemes
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

" powerline
language en_US.UTF-8
let g:Powerline_symbols = 'fancy'
set laststatus=2

call togglebg#map("<F5>")

set clipboard=unnamed

" ycm settings
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {}

" ultisnips setting
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnpsSnippetDirectories = ['UltiSnips']

