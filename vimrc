filetype plugin indent on

call plug#begin('~/.vim/plugged')

" color and UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" basic
Plug 'airblade/vim-rooter'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'thaerkh/vim-workspace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'raimondi/delimitmate'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/neocomplete.vim'
Plug 'ervandew/supertab'
Plug 'sbdchd/neoformat'
Plug 'vim-scripts/loremipsum'
Plug 'junegunn/vim-easy-align'

" syntax
Plug 'w0rp/ale'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'mattn/emmet-vim'
" Plug 'cespare/vim-toml'

" tools
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" external integration
Plug 'rizzatti/dash.vim'

" testing
Plug 'vim-scripts/DrawIt'

" Plug 'godlygeek/tabular'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'mbbill/undotree'
" Plug 'yegappan/mru'
" Plug 'flowtype/vim-flow'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-fugitive'
" Plug 'pangloss/vim-javascript'
" Plug 'ternjs/tern_for_vim'
" Plug 'junegunn/limelight.vim'
" Plug 'Quramy/tsuquyomi')
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Valloric/YouCompleteMe', {'build' : './pyinstall.sh'})
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'junegunn/goyo.vim'
" Plug 'scrooloose/syntastic'
" tagbar

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
