syntax enable

" au == autocmd, setl == setlocal
au FileType python setl nowrap
au FileType json setl conceallevel=0
au FileType javascript setl nofoldenable nowrap
au FileType typescript setl commentstring=//%s
au FileType samba setl commentstring=#%s

" au FileType netrw setl bufhidden=wipe
" autocmd FileType netrw setl bufhidden=delete

" let g:netrw_liststyle=2

" au Filetype typescript setlocal makeprg=tsc

" file type detector
au BufRead,BufNewFile Makefile* setlocal filetype=make

" au BufWritePost *.ts make


set nowrap
set nofoldenable
set foldcolumn=0
set textwidth=0
set nolbr
set shiftwidth=2
set tabstop=2
set softtabstop=2
set cmdheight=1
set showtabline=1
set switchbuf=
" set number
" set relativenumber
set cursorline
set wildmenu
set wildmode=full
" set ttymouse=xterm2
set listchars=tab:»»,trail:·,extends:▸,eol:¬
" set mouse=
" set mouse=a
" set noignorecase


" color scheme selection
let g:solarized_termcolors=256
set background=dark

" colorscheme default
if has("gui_running")
  set background=light
  colorscheme molokai
else
  set t_Co=256

  " set t_Co=1
  " set background=light
  " colorscheme solarized
  " let g:airline_theme="solarized"

  " set background=dark
  " colorscheme molokai
  " let g:airline_theme="molokai"

  colorscheme jellybeans
  let g:airline_theme="jellybeans"

  " colorscheme mongo
  " colorscheme gruvbox
  " colorscheme Tomorrow-Night-Eighties
  " colorscheme kolor
  " colorscheme peaksea
  " colorscheme ir_black
  " colorscheme elflord
  " colorscheme base16-3024
  "
  " let g:airline_theme="powerlineish"
endif


" bufexplorer
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowRelativePath=0
let g:bufExplorerSortBy='mru'
" let g:bufExplorerSortBy='number'


" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_detect_modified=1
let g:airline_inactive_collapse=1
let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#buffer_nr_show = 2
let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#show_tab_nr = 1
"let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'

" taglist
" map <leader>tl :TlistToggle<CR><leader>inn
" let Tlist_Compact_Format = 1
" let Tlist_File_Fold_Auto_Close = 1
" let Tlist_GainFocus_On_ToggleOpen = 1
" let Tlist_WinWidth = 42
" let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1
" let Tlist_Auto_Highlight_Tag = 1
" let Tlist_Exit_OnlyWindow = 1


" tagbar
map <leader>tt :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" let g:tagbar_hide_nonpublic = 1
" let g:tagbar_left = 1
let g:tagbar_sort = 0
let g:tagbar_width = 42
let g:tagbar_indent = 1
" autocmd VimEnter * nested :TagbarOpen


" syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['pyflakes', 'pylint', 'python']
"let g:syntastic_c_checkers = ['make', 'gcc']
"jlet g:syntastic_always_populate_loc_list = 1
"let g:syntastic_less_checkers = ['lessc']
let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_tsc_args = ['tsuquyomi']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_java_checkers = []
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" multicursor
" let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key= '<C-E>'
let g:multi_cursor_next_key = '<C-E>'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'
" let g:multi_cursor_prev_key = '<C-z>'


" signature (disabled)
" let g:SignatureMap = {
"   \ 'Leader'            : "m",
"   \ 'PlaceNextMark'     : "m",
"   \ 'GotoNextSpotByPos' : "mn",
"   \ 'GotoPrevSpotByPos' : "mp",
"   \ }

" git gutter
let g:gitgutter_map_keys = 0
nmap <leader>kk :GitGutterToggle<CR>
nmap <leader>kl :GitGutterLineHighlightsToggle<CR>
nmap <leader>kn :GitGutterNextHunk<CR>
nmap <leader>kp :GitGutterPrevHunk<CR>
nmap <leader>ku <Plug>GitGutterRevertHunk
nmap <leader>kv <Plug>GitGutterPreviewHunk


" git fugitive
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gsdiff<CR>
nmap <leader>gc :Gcommit<CR>


" jedi (disabled)
" let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#goto_assignments_command = "<leader>ga"
" let g:jedi#goto_definitions_command = "<leader>gd"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>gu"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>gr"
" let g:jedi#show_call_signatures = "1"


" ack
" map <leader>a :Ack '' %<LEFT><LEFT><LEFT>
" map <leader>aa :Ack ''<LEFT>
" map <leader>as :Ack <cword><CR>


" ctrlsf
" nmap <leader>a <Plug>CtrlSFPrompt
" nmap <leader>ar :CtrlSF -R  <LEFT>
" nmap <leader>aa <Plug>CtrlSFCwordPath
" vmap <leader>aa <Plug>CtrlSFVwordPath
" let g:ctrlsf_winsize = '40%'

" ctrl-p find-files
" let g:ctrlp_map = '<leader>f'
" let g:ctrlp_custom_ignore = '^\.svn\|^\.DS_Store\|^\.git\|^\.cvs'


" Unite
nnoremap <leader>f :Unite -no-split file<cr>
nnoremap <leader>g :Unite grep:.<cr>
nnoremap <leader>o :Unite buffer<cr>
" let g:unite_source_history_yank_enable = 1
" nnoremap <leader>y :Unite history/yank<cr>


" MRU
map <leader>r :MRU<CR>


" easymotion
let g:EasyMotion_do_mapping=0
" map <leader>ge <Plug>(easymotion-prefix)
" map <leader>gl <Plug>(easymotion-bd-jk)
map S <Plug>(easymotion-bd-W)
map s <Plug>(easymotion-bd-w)


" tabularize
nmap <leader>a= :Tab /=
vmap <leader>a= :Tab /=
nmap <leader>a: :Tab /:\zs
vmap <leader>a: :Tab /:\zs
" map <leader>ar :s/ *\(=\) */ \1 /


" yankring
map <leader>y :YRShow<CR>


" commentary
let g:commentary_map_backslash = 0


" vimim
let g:vimim_toggle="wubi,pinyin"


" peepopen (disable)
" let g:peepopen_loaded=1


" nerdtree
let g:NERDTreeWinSize = 55
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeChDirMode = 2
map <leader>nn :NERDTreeToggle<cr>
map <leader>n :NERDTreeToggle<cr>

" system
nmap <leader>x :x<CR>
nmap <leader>q <ESC>:q!<CR>
nmap <leader>qq <ESC>:qa!<CR>


" indentLine
" let g:indentLine_color_term = 239
" let g:indentLine_char = '┆' "'┆┊'
" let g:indentLine_concealcursor = ''
" nnoremap <leader>id :IndentLinesToggle<CR>

" let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" emmet
" nmap <C-Y> <Plug>(emmet-expand-abbr)


" neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#min_keyword_length=3

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" dash
nmap <silent> <leader>dd <Plug>DashSearch


" fileBeagle
let g:filebeagle_suppress_keymaps=1
map <silent> -  <Plug>FileBeagleOpenCurrentBufferDir


" expand-region (use + and _ )
" vnoremap + <Plug>(expand_region_shrink)


" undotree
let g:undotree_SplitWidth=40
nnoremap <leader>u :UndotreeToggle<CR>


" misc (not plugin) mapping configuration

" search with \v
nnoremap / /\v

" motion and reset
" silent! unmap <C-B>
" unmap <C-H>
" unmap <C-J>
unmap 0
nnoremap 0 ^
nnoremap 00 0
nnoremap <bslash> <C-B>
nnoremap <space> <C-F>


" buffer
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>d :bdelete<CR>
map <leader>bb :e  <LEFT>
" switch buffer with Tab key
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
" nmap <leader><leader> :e #<CR>

" switch location
nnoremap ,, '.
nnoremap ;; '`


" quickfix
nnoremap <leader>cm :w<BAR>make<CR>
nnoremap <leader>co :copen<CR>
nnoremap <leader>cl :cclose<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>

" location
nnoremap <leader>ll :lop<CR>
nnoremap <leader>lc :lcl<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprev<CR>


" copy/paste from system clipboard
" imap <C-K>v <C-O>"+P
" under insert mode, it is the same as <C-R>* or <C-R>+
nmap <C-K>v "+P
vmap <C-K>c "+y


" toggle option
nmap <leader>il :set cursorcolumn!<CR>:set list!<CR>
nmap <leader>iw :set wrap!<CR>
nmap <leader>ip :set paste!<CR>
nmap <leader>ic :set ignorecase!<CR>
nmap <leader>it :set filetype=plain<CR>
nmap <leader>ii :nohlsearch<CR>
" <leader>ig is indent-guides
" nmap <leader>is :syntax off<CR>
" use 2 commands to switch line numbers as
" there is a bug that option "number" and "relativenumber" are exclusive on some vim version
nmap <leader>in :set number<CR>:set relativenumber<CR>
nmap <leader>inn :set nonumber<CR>:set norelativenumber<CR>


" we can use dot command to repeat last command
" reselect region after indent < >
" vnoremap < <gv
" vnoremap > >gv


" execute current script (python/bash)
" nmap <leader>v <Esc>:w<CR>:!./%<CR>
"
" insert a empty line
" nnoremap KK o<ESC>


" use <CR> to confirm omni-complete popup
inoremap <expr><CR> pumvisible() ? "\<C-Y>":"\<CR>"
" inoremap <expr><TAB> pumvisible() ? "\<C-N>" : "\<TAB>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" select last inserted text
nnoremap gV `[v`]


" quick quit the input mode
imap jj <esc>
cmap jj <esc>


" sudo write
nmap <leader>W :W<CR>:set nomodified<CR>


" replace current word
nnoremap <leader>rw :%s/<C-R>=expand('<cword>')<CR>//g<LEFT><LEFT>

"increase and decease number
" noremap <Up> <C-a>
" noremap <Down> <C-x>
"
" quick command line
" noremap ;; :

" ex command
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

" quick marks
" use mm to mark the line as mark M
" use mt to go to mark M
nnoremap mt 'm

" trail tail whitespace
command! CLEAN retab | %s/ \+$//
nnoremap <leader>rtw :%s/\s\+$//<cr>:let @/=''<cr>

map <leader>e :e! ~/.vim_runtime/my_configs.vim<cr>
map <leader>ee :e! ~/.vimrc<cr>

" ctag enter
" nnoremap <Return> <C-]>
" nnoremap <leader>b <C-o>

" switch splits
" noremap <Up> <c-w>k
" noremap <Down> <c-w>j
" noremap <Right> <c-w>l
" noremap <Left> <c-w>h
" noremap vs :vsplit<CR>
" noremap <C-h> <C-w>h
" noremap <C-l> <C-w>l
" noremap <leader>j <C-w><C-w>
" au VimResized * exec "normal! \<c-w>="

" for reference
" <CR> as command prefix
" nnoremap <CR> :
" au FocusLost * :w
" set exrc   "enable per-directory .vimrc files
" set secure "disable unsafe commands in local .vimrc files
" noremap <c-up> <c-w>+
" noremap <c-down> <c-w>-
" noremap <c-left> <c-w>>
" noremap <c-right> <c-w><
" let mapleader=" "
" imap <c-l><c-a> <c-k>a* " Alpha
" imap <c-l><c-b> <c-k>b* " Beta
" imap <c-l><c-g> <c-k>g* " Gamma
" imap <c-l><c-d> <c-k>d* " Delta
" imap <c-l><c-e> <c-k>e* " Epslion
