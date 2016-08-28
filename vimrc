let s:vimrc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:vimrc_dir = s:vimrc_path
" echo s:vimrc_dir

" set runtimepath+=~/.vim_runtime

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
execute 'set runtimepath+='.s:vimrc_dir.'/dein/repos/github.com/Shougo/dein.vim'

" Required:
call dein#begin(s:vimrc_dir.'/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('flazz/vim-colorschemes')

call dein#add('mbbill/undotree')
call dein#add('scrooloose/nerdtree')
call dein#add('jlanzarotta/bufexplorer')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('yegappan/mru')
call dein#add('vim-scripts/YankRing.vim')
call dein#add('godlygeek/tabular')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('terryma/vim-expand-region')
call dein#add('tpope/vim-surround')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('ntpeters/vim-better-whitespace')
call dein#add('tpope/vim-commentary')

call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive.git')

call dein#add('scrooloose/syntastic')
call dein#add('plasticboy/vim-markdown')
call dein#add('leafgarland/typescript-vim')
call dein#add('Quramy/tsuquyomi')
call dein#add('pangloss/vim-javascript')

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Valloric/YouCompleteMe', {'build' : './pyinstall.sh'})

call dein#add('rizzatti/dash.vim')
" call dein#add('ervandew/supertab')

" call dein#add('Shougo/vimshell')
" call dein#add('Shougo/unite.vim')
" call dein#add('Shougo/neomru.vim')
" call dein#add('Shougo/neoyank.vim')
" call dein#add('Xuyuanp/nerdtree-git-plugin')

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"try
execute "source ".s:vimrc_dir."/vimrcs/basic.vim"
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim
execute "source ".s:vimrc_dir."/my_configs.vim"
"catch
"endtry
