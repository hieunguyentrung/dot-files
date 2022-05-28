set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-endwise'
Plugin 'yggdroot/indentline'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'raimondi/delimitmate'
Plugin 'tomtom/tcomment_vim'
call vundle#end()
filetype plugin indent on

set expandtab
set smarttab
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set nowrap
" set list
set hlsearch

set scrolloff=2
set sidescrolloff=5
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

set nrformats-=octal

set statusline =
set statusline +=%m                          " modified flag
set statusline +=\ »
set statusline +=\ %f                        " Relative path to file
set statusline +=\ «
set statusline +=\ %h                        " [help]
set statusline +=%r                          " read only flag
set statusline +=%w                          " preview window flag
set statusline +=%y                          " filetype
set statusline +=%=%-14.(%l,%c%V%)           " Line, column-virtual column"
set statusline +=\ %P]"
function! StatusGitBranch()
  let b:s_git_branch_name = FugitiveHead()
  if !empty(b:s_git_branch_name)
    return " ← ".b:s_git_branch_name
  else
    return " "
  endif
endfunction
set statusline +=%{StatusGitBranch()}

set autoread

set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*

set ttyfast
set timeout timeoutlen=800 ttimeoutlen=50
set synmaxcol=300

set ttimeout

set splitbelow
set splitright

let mapleader = ','
let g:mapleader = ','

nnore <leader><CR> :noh<CR>
inoremap jj <ESC>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set mousehide
set ruler
set number
set laststatus=2
set wildmenu
set lazyredraw
set history=500
set ignorecase
set smartcase
set incsearch
set magic
set showmatch
set mat=2
syntax enable
set encoding=utf8
set ffs=unix,dos,mac
set nohlsearch

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|DS_Store))$'
