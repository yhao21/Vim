
set nocompatible
let mapleader=" " 
syntax on
set number
set relativenumber
set cursorline
set cursorcolumn
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :noh<CR>



noremap j h
noremap k j
noremap i k
noremap I 5k
noremap K 5j



noremap a i
noremap A I
noremap h a
noremap H A


" select to the end of the line in normal mode.
noremap te <c-v>$
" select to the begining of the line in normal mode.
noremap ts <c-v>0

" python comment your code
vnoremap <c-/> A#<Esc><Esc>




map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>


map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

map <LEADER>o <C-w>o

""change the size of your split
""
""enxtend to right when horizontal split
""number 3 here refers for move 3 units to the right. you can customize.
"execute "set <M-l>=l"
noremap <LEADER>f <c-w>20>
""to the left
"execute "set <M-j>=j"
noremap <LEADER>s <c-w>20<
""smaller, under vertical split
"execute "set <M-k>=k"
noremap <LEADER>e <c-w>10+
""bigger, under vertial split
"execute "set <M-,>=,"
noremap <LEADER>d <c-w>10-
"






map ti :tabe<CR>
map tl :+tabnext<CR>
map tj :-tabnext<CR>

map sh <C-w>t<C-w>K
map sh <C-w>t<C-w>H

"打开snippet自定义界面
noremap <LEADER>= :UltiSnipsEdit<cr>

"打开 实时编译并预览pdf的功能
noremap <LEADER>- :LLPStartPreview<cr>



" run you python code with shortcuts
nnoremap rr :! clear ; python3.8 %<CR>





set encoding=utf-8
set scrolloff=7

" vim and system use same clipboard, then you can ctrl v
set clipboard=unnamedplus


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

" Track the engine. (Ultisnips)
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:(Ultisnips)
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'yggdroot/indentline'

Plug 'vim-syntastic/syntastic'

"Plug 'fannheyward/coc-texlab'

"Plug 'terryma/vim-multiple-cursors'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"Plug 'liuchengxu/space-vim-theme'
"Plug 'yuttie/hydrangea-vim'
Plug 'connorholyday/vim-snazzy'
"Plug 'lervag/vimtex'

call plug#end()


""=========================
""color for space_vim_theme
"colorscheme space_vim_theme
"let g:space_vim_transp_bg = 1
"

"==========================
""color for hydrangea

"color hydrangea

"==============================
" color snazzy

color snazzy
let g:SnazzyTransparent = 1





"==========================================================
map ff :NERDTreeToggle<CR>

let NERDTreeMapOpenSplit = 'h'









"================
"coc_nvim
"================
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif




" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif



" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Fin your gramma mistake place!
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)




"==========================================================

" 定义跳出括号函数，用于跳出括号
func SkipPair()
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc
" 将tab键绑定为跳出括号
execute "set <M-h>=h"
inoremap <M-h> <c-r>=SkipPair()<CR>





"=========
"indentline
"=========
let g:indentLine_char=':'
let g:indentLine_enabled = 1



"===================
"autorun  python code

" Ctrl S to run sh/python3
map <F2> :call CompileRunGcc()<CR>`
func! CompileRunGcc()
    exec "w"
    if &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3.8 %"
    endif
endfunc



"==========================================================
"vim live pdf

autocmd Filetype tex setl updatetime=10
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile=10




"==========================================================
"UltiSnips


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" put your own snippet here:
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']


"==========================================================
"  设置latex不会把数学公式代码自动转换，，尤其不会把$隐藏起来，，很有用！！！



autocmd Filetype tex setlocal conceallevel=0
autocmd Filetype plaintex setlocal conceallevel=0

let g:tex_conceal = "0"

