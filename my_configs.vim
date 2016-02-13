syntax enable

au BufRead,BufNewFile Makefile* setlocal filetype=make

au FileType javascript setl nofoldenable nowrap
au FileType python setl nowrap
au FileType json setl nowrap
au FileType samba set commentstring=#%s


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
set number
" set nonumber
set relativenumber
set cursorline
set wildmenu
set wildmode=full
set ttymouse=xterm2
set listchars=tab:»»,trail:·,extends:▸
" set listchars=eol:¬
set mouse=
" set mouse=a


" color scheme selection
let g:solarized_termcolors=256
" let g:gruvbox_italicize_comments=0


if has("gui_running")
  set background=light
  colorscheme molokai
else
  set t_Co=256
  set background=dark

  " set t_Co=16
  " set background=light
  " colorscheme solarized
  " let g:airline_theme="solarized"


  " colorscheme default

  colorscheme molokai
  let g:airline_theme="molokai"

  " colorscheme mongo
  " colorscheme gruvbox
  " colorscheme Tomorrow-Night-Eighties
  " colorscheme kolor
  " colorscheme peaksea
  " colorscheme ir_black
  " colorscheme elflord
  " colorscheme base16-3024
  " colorscheme solarized
  " colorscheme jellybeans
  " let g:airline_theme="jellybeans"

  " let g:airline_theme="powerlineish"
endif


" bufexplorer
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowRelativePath=0
let g:bufExplorerSortBy='mru'
" let g:bufExplorerSortBy='number'


" airline
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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
let g:syntastic_c_checkers = ['make', 'gcc']
let g:syntastic_cpp_checkers = ['make', 'cppcheck']
let g:syntastic_less_checkers = ['lessc']


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


" showmarks
let g:showmarks_textlower="#"
let g:showmarks_hlline_lower=1
let g:showmarks_include="abcdefgjknzxvqwrt"
let g:showmarks_enable=0
" hi default ShowMarksHLl cterm=reverse
" hi default ShowMarksHLm cterm=reverse
" let g:showmarks_textother="-"


" git gutter
let g:gitgutter_map_keys = 0
nmap <leader>kk :GitGutterToggle<CR>
" nmap <leader>kt :GitGutterToggle<CR>
nmap <leader>kl :GitGutterLineHighlightsToggle<CR>
nmap <leader>kn :GitGutterNextHunk<CR>
nmap <leader>kp :GitGutterPrevHunk<CR>
nmap <leader>ku <Plug>GitGutterRevertHunk
nmap <leader>kv <Plug>GitGutterPreviewHunk


" git fugitive
" nmap <leader>ks :Gstatus<CR>
" nmap <leader>kd :Gdiff<CR>
" nmap <leader>kc :Gcommit<CR>


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
nmap <leader>a <Plug>CtrlSFPrompt
nmap <leader>ar :CtrlSF -R  <LEFT>
nmap <leader>aa <Plug>CtrlSFCwordPath
vmap <leader>aa <Plug>CtrlSFVwordPath
let g:ctrlsf_winsize = '40%'

" ctrl-p find-files
let g:ctrlp_map = '<leader>f'


" MRU
map <leader>r :MRU<CR>


" easymotion
let g:EasyMotion_do_mapping=0
" map <leader>ge <Plug>(easymotion-prefix)
" map <leader>gl <Plug>(easymotion-bd-jk)
map S <Plug>(easymotion-bd-W)
map s <Plug>(easymotion-bd-w)


" tabularize
map <leader>al :Tab /=
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
let g:NERDTreeWinSize = 45


" system
nmap <leader>x :x<CR>
nmap <leader>q <ESC>:q!<CR>
nmap <leader>qq <ESC>:qa!<CR>


" indentLine
let g:indentLine_char = '¦' "'┆┊'


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


" indent lines
nnoremap <leader>id :IndentLinesToggle<CR>


" expand-region (use + and _ )
vnoremap + <Plug>(expand_region_shrink)


" undotree
let g:undotree_SplitWidth=40
nnoremap <leader>u :UndotreeToggle<CR>


" misc (not plugin) mapping configuration

" motion and reset
unmap <C-B>
unmap <C-H>
unmap <C-J>
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
nnoremap <leader><leader> ''
nnoremap <leader>. '.


" quickfix
nnoremap <leader>cc :cc<CR>
nnoremap <leader>cl :ccl<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>

" location
nnoremap <leader>ll :lop<CR>
nnoremap <leader>lc :lcl<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprev<CR>


" copy/paste from system clipboard
" under insert mode, it is the same as <C-R>* or <C-R>+
imap <C-K>v <C-O>"+P
nmap <C-K>v "+P
vmap <C-K>c "+y


" toggle option
nmap <leader>il :set cursorcolumn!<CR>:set list!<CR>
nmap <leader>iw :set wrap!<CR>
nmap <leader>ip :set paste!<CR>
nmap <leader>ii :nohlsearch<CR>
nmap <leader>is :syntax off<CR>
" use 2 commands to switch line numbers as
" there is a bug that option "number" and "relativenumber" are exclusive on same vim version
nmap <leader>in :set nonumber<CR>:set relativenumber<CR>
nmap <leader>inn :set nonumber<CR>:set norelativenumber<CR>


" we can use dot command to repeat last command
" reselect region after indent < >
" vnoremap < <gv
" vnoremap > >gv


" execute current script (python/bash)
" nmap <leader>v <Esc>:w<CR>:!./%<CR>
"
" insert a empty line
nnoremap KK o<ESC>


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
noremap ;; :

" ex command
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

" trail tail whitespace
command! CLEAN retab | %s/ \+$//
nnoremap <leader>rtw :%s/\s\+$//<cr>:let @/=''<cr>


" ctag enter
" nnoremap <Return> <C-]>
" nnoremap <leader>b <C-o>

" switch splits
" noremap <Up> <c-w>k
" noremap <Down> <c-w>j
" noremap <Right> <c-w>l
" noremap <Left> <c-w>h
" noremap vs :vsplit<CR>
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <leader>j <C-w><C-w>
" au VimResized * exe "normal! \<c-w>="

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

