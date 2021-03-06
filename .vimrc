set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" ...
" haskell
Plugin 'dag/vim2hs'

Plugin 'scrooloose/nerdtree'

" Generates config files for YouCompleteMe
Plugin 'rdnetto/YCM-Generator'

" rust.vim
Plugin 'rust-lang/rust.vim'

"vim-airline
Plugin 'bling/vim-airline'

Plugin 'majutsushi/tagbar'
" golang
Plugin 'fatih/vim-go'
execute pathogen#infect()
syntax on

filetype plugin indent on     " required
Bundle 'Valloric/YouCompleteMe'

" set tab to 4 whitespace
:set ts=4
:set expandtab
:set softtabstop=4
:set shiftwidth=4
:set nu
color desert
au FileType javascript set dictionary+=$HOME/.vim/plugin/dict/node.dict

" iTerm2
set t_Co=256
" youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 
let g:ycm_confirm_extra_conf = 0
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" taglist
let Tlist_Use_Right_Window = 1
set autochdir
set tags=tags;
