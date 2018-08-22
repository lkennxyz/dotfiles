set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" <============================================>
" Specify the plugins you want to install here.
Plugin 'scrooloose/nerdtree'
"Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'posva/vim-vue'
" We'll come on that later
" <============================================>
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
" Put the rest of your .vimrc file here
set tabstop=4
set noexpandtab
set softtabstop=4
set shiftwidth=4
set copyindent
set showmatch
set background=dark
colo neuromancer
syntax on
autocmd Filetype javascript set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd Filetype vue set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <plug>(ale-previous-wrap)
nmap <silent> <C-j> <plug>(ale-next-wrap)
map <C-n> :NERDTreeToggle<CR>
