filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'Shougo/neocomplete.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/limelight.vim'

Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/YankRing.vim'
Plug 'yegappan/mru'

Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'docker/docker'

Plug 'vim-scripts/DrawIt'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'rizzatti/dash.vim'

" Plug 'Quramy/tsuquyomi')
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Valloric/YouCompleteMe', {'build' : './pyinstall.sh'})
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'junegunn/goyo.vim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'tpope/vim-fugitive.git'

call plug#end()

let s:vimrc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" echo s:vimrc_path
let s:vimrc_dir = s:vimrc_path
" let s:vimrc_dir = '~/projects/vimrc'
execute "source ".s:vimrc_dir."/vimrcs/basic.vim"
execute "source ".s:vimrc_dir."/my_configs.vim"

" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim
