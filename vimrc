filetype plugin indent on

call plug#begin('~/.vim/plugged')

" color and UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" basic
Plug 'Shougo/neocomplete.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/YankRing.vim'
Plug 'yegappan/mru'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/DrawIt'
Plug 'jiangmiao/auto-pairs'

" syntax
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/html5.vim'

" tools
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rizzatti/dash.vim'

" testing
" Plug 'tpope/vim-fugitive'
" Plug 'pangloss/vim-javascript'
" Plug 'ternjs/tern_for_vim'
" Plug 'godlygeek/tabular'
" Plug 'junegunn/limelight.vim'
" Plug 'Quramy/tsuquyomi')
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Valloric/YouCompleteMe', {'build' : './pyinstall.sh'})
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'junegunn/goyo.vim'
" Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let s:vimrc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:vimrc_dir = s:vimrc_path
" echo s:vimrc_path
" let s:vimrc_dir = '~/projects/vimrc'
execute "source ".s:vimrc_dir."/vimrcs/basic.vim"
execute "source ".s:vimrc_dir."/my_configs.vim"

" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim
