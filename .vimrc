set background=dark
colorscheme pablo
set number
syntax on
set encoding=utf-8

set cursorline

filetype indent on
set showmatch

hi StatusLine ctermbg=yellow ctermfg=black
set fillchars+=vert:│
hi VertSplit ctermbg=white ctermfg=black

" configuration for mkitt/tabline.vim

let python_highlight_all=1

set wildmenu            " visual autocomplete for command menu

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" new tab by typing '|'
nnoremap <bar> :tabnew

" switch between tabs by pressing tab
nnoremap <tab> :tabn<enter>

" enable pasting from clipboard by typing Shift-p
nnoremap <S-P> <S-Insert>

" python auto-indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4             |
    \ set softtabstop=4         |
    \ set shiftwidth=4          |
    \ set textwidth=79          |
    \ set expandtab             |
    \ set autoindent            |
    \ set fileformat=unix       |

" full-stack auto-indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2             |
    \ set softtabstop=2         |
    \ set shiftwidth=2          |

" doxygen highlighting for c
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

"set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256

""" set nocompatible              " be iMproved, required
""" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
" I found this plugin to slow down vim considerably
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'mkitt/tabline.vim'

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

let g:notes_suffix = '.txt'
let g:notes_directories = ['.', '/mnt/c/Users/username/Documents/school/notes']

Plugin 'scrooloose/nerdtree'

autocmd vimenter * NERDTree
au VimEnter * wincmd l

Plugin 'kien/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'jceb/vim-orgmode'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
