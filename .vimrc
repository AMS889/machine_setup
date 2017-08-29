set nocompatible              " be iMproved, required
set encoding=utf-8
filetype on                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim,~/.vim/ftplugin,~/.vim/after

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'derekwyatt/vim-scala'
Plugin 'flazz/vim-colorschemes'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'EasyMotion'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'jpalardy/vim-slime'
Plugin 'juvenn/mustache.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'mikewest/vimroom'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'

call vundle#end()            " required

syntax enable
"set background=dark
"let g:solarized_termcolors=16
"let g:solarized_visibility = \"high"
"let g:solarized_contrast = \"high"
colorscheme monokai

"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"let g:EclimCompletionMethod = 'omnifunc'

" airline configuration
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"let g:ycm_min_num_of_chars_for_completion = 2

set number
set laststatus=2
"set autoindent
set nowrap
set magic
imap jj <Esc>

" custom tabs by file type
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set hidden
set modifiable

autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set cinoptions=(0,10,t0,(0,w1

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scala setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType md setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Stip trailing whitespace from files on save
autocmd FileType c,scala,cpp,python,ruby,java,sql,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

" Markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.markdown set filetype=markdown

" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell
"
" Set word wrap for markdown filetypes
" autocmd BufRead,BufNewFile *.md setlocal textwidth=80

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,javascript    let b:comment_leader = '// '
autocmd FileType sql                            let b:comment_leader = '--  '
autocmd FileType sh,ruby,python                 let b:comment_leader = '# '
autocmd FileType conf,fstab                     let b:comment_leader = '# '
autocmd FileType vim                            let b:comment_leader = '" '

let mapleader=" "
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :e<Space>
nnoremap <Leader>Q :qa<CR>

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>] :tabn<CR>
nnoremap <Leader>[ :tabp<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>i i<CR><ESC>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>z :e .<CR>
nnoremap <Leader>m :MBEToggle<CR>
" easy resizing of panes
nnoremap + <C-w>>
nnoremap - <C-w><
"nnoremap <S-Tab> <<

inoremap {<CR> {<CR>}<esc>ko<Tab>
inoremap (<CR> (<CR>)<esc>ko<Tab>
inoremap [<CR> [<CR>]<esc>ko<Tab>

inoremap :<CR> :<CR><esc>ko<Tab>

set encoding=utf-8
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

set pastetoggle=<F10>
set tags=tags;/
let g:vimroom_width=160
let g:vimroom_sidebar_height=0

set includeexpr=substitute(v:fname,'_','/','g').'.php'
set suffixesadd=.tpl
set suffixesadd=.js

set clipboard=unnamed
set scrolloff=5

set laststatus=2

