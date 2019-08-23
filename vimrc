filetype plugin indent on

call plug#begin('~/.vim/plugged')

" color and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" basic
Plug 'Lokaltog/vim-easymotion'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree'
" Plug 'jlanzarotta/bufexplorer'

Plug 'tomtom/tcomment_vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'
" Plug 'yggdroot/indentline'
" Plug 'nathanaelkane/vim-indent-guides'

Plug 'terryma/vim-expand-region'
Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-surround'
" Plug 'raimondi/delimitmate'

Plug 'editorconfig/editorconfig-vim'

Plug 'Shougo/neocomplete.vim'
" Plug 'ervandew/supertab'
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'

" Plug 'terryma/vim-multiple-cursors'
" Plug 'thaerkh/vim-workspace'
" Plug 'wesQ3/vim-windowswap'
" Plug 'godlygeek/tabular'
" Plug 'sbdchd/neoformat'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" snip

" syntax
Plug 'plasticboy/vim-markdown'
Plug 'ap/vim-css-color'

" generation
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/loremipsum'

" Plug 'w0rp/ale'
" Plug 'tpope/vim-markdown'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'mxw/vim-jsx'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'othree/html5.vim'
" Plug 'fatih/vim-go'
" Plug 'andrewstuart/vim-kubernetes'
" Plug 'elzr/vim-json'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }

" tools
" Plug 'mileszs/ack.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" external integration
" Plug 'rizzatti/dash.vim'

" testing
" Plug 'vim-scripts/DrawIt'

" Plug 'tpope/vim-repeat'
" Plug 'davidhalter/jedi-vim'
" Plug 'cespare/vim-toml'
" Plug 'junegunn/vim-easy-align'
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
