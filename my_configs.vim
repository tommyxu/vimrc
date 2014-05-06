syntax enable

au FileType javascript setl nofoldenable nowrap
au FileType python setl nowrap
au FileType json setl nowrap

set nofoldenable
set foldcolumn=0
set textwidth=0
set nolbr
set shiftwidth=2
set tabstop=2
set cmdheight=1
set showtabline=1
set switchbuf=
set nonumber
set relativenumber

if has("gui_running")
  set background=light
  " let g:solarized_termcolors=256
  " set t_Co=16
  colorscheme solarized
else
  set t_Co=256
  set background=dark
  colorscheme molokai
endif

" colorscheme peaksea
" colorscheme default
" colorscheme ir_black
" colorscheme elflord
" colorscheme Tomorrow-Night-Eighties
" colorscheme base16-3024 
" colorscheme molokai
" colorscheme jellybeans


" bufexplorer
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowRelativePath=0
" let g:bufExplorerSortBy='number'
let g:bufExplorerSortBy='mru'


" airline
let g:airline#extensions#tabline#enabled=1


" taglist
map <leader>tl :TlistToggle<CR><leader>inn
" let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_WinWidth = 42
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1


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
" let g:syntastic_python_checkers = ['python']
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_c_checkers = ['make', 'gcc']
let g:syntastic_cpp_checkers = ['cppcheck'] 


" multicursor
" let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key= '<C-E>'
let g:multi_cursor_next_key = '<C-E>'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'
" let g:multi_cursor_prev_key = '<C-z>'


" signature
let g:SignatureMap = {
  \ 'Leader'            : "m",
  \ 'PlaceNextMark'     : "m",
  \ 'GotoNextSpotByPos' : "mn",
  \ 'GotoPrevSpotByPos' : "mp",
  \ }


" showmarks
let g:showmarks_textlower="#"
let g:showmarks_hlline_lower=1
let g:showmarks_include="abcdefgjknzxvqwrt"
let g:showmarks_enable=0
hi default ShowMarksHLl cterm=reverse
hi default ShowMarksHLm cterm=reverse
" let g:showmarks_textother="-"


" git gutter
let g:gitgutter_map_keys = 0
nmap <leader>kk :GitGutterToggle<CR>
nmap <leader>kt :GitGutterToggle<CR>
nmap <leader>kl :GitGutterLineHighlightsToggle<CR>
nmap <leader>kn :GitGutterNextHunk<CR>
nmap <leader>kp :GitGutterPrevHunk<CR>
nmap <leader>ku <Plug>GitGutterRevertHunk
nmap <leader>kv <Plug>GitGutterPreviewHunk


" git fugitive
nmap <leader>ks :Gstatus<CR>
nmap <leader>kd :Gdiff<CR>
nmap <leader>kc :Gcommit<CR>


" jedi
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#goto_assignments_command = "<leader>ga"
let g:jedi#goto_definitions_command = "<leader>gd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>gu"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>gr"
let g:jedi#show_call_signatures = "1"


" ack
map <leader>a :Ack '' %<LEFT><LEFT><LEFT>
map <leader>aa :Ack ''<LEFT>
map <leader>as :Ack <cword><CR>


" ctrl-p find-files
let g:ctrlp_map = '<leader>f'


" MRU
map <leader>r :MRU<CR>


" easymotion
let g:EasyMotion_do_mapping=0
map <leader>ge <Plug>(easymotion-prefix)
" map <leader>gl <Plug>(easymotion-bd-jk)
map S <Plug>(easymotion-bd-W)
map s <Plug>(easymotion-bd-w)


" tabularize
map <leader>al :Tab /=
map <leader>ar :s/ *\(=\) */ \1 /


" yankring
map <leader>y :YRShow<CR>


" commentary
let g:commentary_map_backslash = 0


" vim-number
nmap <leader>no :NumbersOnOff<CR>
nmap <leader>nt :NumbersToggle<CR>


" vimim
let g:vimim_toggle="wubi,pinyin"


" peepopen (disable)
let g:peepopen_loaded=1


" system
nmap <leader>x :x<CR>
nmap <leader>q <ESC>:q!<CR>
nmap <leader>qq <ESC>:qa!<CR>


" motion and reset
unmap <C-B>
unmap <C-H>
unmap <C-J>
unmap 0
nnoremap <bslash> <C-B>
nnoremap <space> <C-F>


" buffer
nmap <leader><leader> :e #<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>
map <leader>bd :bdelete<CR>
map <leader>bb :bdelete<CR>
map <leader>bt :e  <LEFT>


" quickfix
nnoremap <leader>cl :ccl<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>


" location next/prev
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
nmap <leader>is :nohlsearch<CR>
" use 2 commands to switch line numbers as 
" there is a bug that option "number" and "relativenumber" are exclusive on same vim version
nmap <leader>in :set nonumber<CR>:set relativenumber<CR>
nmap <leader>inn :set nonumber<CR>:set norelativenumber<CR>


" misc
" execute current script (python/bash)
nmap <leader>v <Esc>:!./%<CR>
" insert a empty line
nnoremap <C-L> o<ESC>
" use <CR> to confirm omni-complete popup
inoremap <expr> <CR> pumvisible()?"\<C-Y>":"\<CR>"

