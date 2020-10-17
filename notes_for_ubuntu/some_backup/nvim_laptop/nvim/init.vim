
"===============
"===============
"===============
" sys settings

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

set encoding=utf-8
set scrolloff=12
set tabstop=2

" vim and system use same clipboard, then you can ctrl v
set clipboard=unnamedplus

"disable and enable touchpad
nnoremap <c-j> :!xinput --disable 13<CR><CR>
nnoremap <c-k> :!xinput --enable 13<CR><CR>




"===============
"=============== Basic operation
"===============

noremap j h
noremap k j
noremap i k
noremap I 5k
noremap K 5j



noremap a i
noremap A I
noremap h a
noremap H A


noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :noh<CR>


"J jump to begining of the line
nnoremap J 0
"L jump to the end
nnoremap L $
" back left in visual mode
vnoremap J B
" forward right in visual mode
vnoremap L W


" select to the end of the line in normal mode.
noremap te <c-v>$
" select to the begining of the line in normal mode.
noremap ts <c-v>0



"map <M-h> <nop>
"map <M-u> <nop>
"map <M-o> <nop>
map S <nop>
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>




"===============
"=============== Split Buffer
"===============
"
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

"===============
"=============== Terminal Buffer
"===============
"switch to normal mode in terminal buffer
tnoremap <Esc> <C-\><C-n>
"open terminal buffer
nnoremap <leader>r :set splitbelow<CR>:split<CR><c-w>10-:terminal<CR>i

"===============
"=============== Python settings
"===============

" pretty json"
"execute "set <M-p>=p"
nnoremap <M-p> :%!python3.8 -m json.tool<CR>


" python commenting
vnoremap ? I#<Esc><Esc>


" run you python code with shortcuts
nnoremap rr :! clear ; python3.8 %<CR>
"noremap <leader>r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"	exec "w"
"	if &filetype == 'c'
"		exec "!g++ % -o %<"
"		exec "!time ./%<"
"	elseif &filetype == 'python'
"		set splitright
"		:sp
"		:term python3.8 %
"	endif
"endfunc

" select coc interpreter
nnoremap <c-p> :CocCommand python.setInterpreter<CR>


" myvim surround
nnoremap ys g@iw
vnoremap ( di()<ESC>hp
vnoremap { di{}<ESC>hp
vnoremap [ di[]<ESC>hp
vnoremap " di""<ESC>hp
vnoremap ' di''<ESC>hp
vnoremap < di<><ESC>hp

"jump start/end of parenthesis
nnoremap 0 %
vnoremap 0 %





"===============
"=============== Vimspector
"===============
let g:vimspector_enable_mappings = "HUMAN"
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput









"===============
"=============== Tab
"===============


map ti :tabe<CR>
map tl :+tabnext<CR>
map tj :-tabnext<CR>

map sv <C-w>t<C-w>K
map sh <C-w>t<C-w>H


"===============
"=============== ALE
"===============
let g:ale_disable_lsp = 1


"===============
"=============== Vim-Plug
"===============
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yggdroot/indentline'
Plug 'puremourning/vimspector'
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'vim-scripts/taglist.vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'dracula/vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'yuttie/hydrangea-vim'
Plug 'connorholyday/vim-snazzy'
Plug 'lervag/vimtex'

call plug#end()


"===============
"=============== Color Scheme - Space_vim_theme
"===============
"colorscheme space_vim_theme
"let g:space_vim_transp_bg = 1


"===============
"=============== Color Scheme - hydrangea
"===============

"color hydrangea

"===============
"=============== Color Scheme - snazzy
"===============

"color snazzy
"let g:SnazzyTransparent = 1


"===============
"=============== Color Scheme - dracula
"===============
	
packadd! dracula
syntax enable
colorscheme dracula



"===============
"=============== Airline
"===============
let g:airline_theme='dracula'
"let g:airline#extension#coc#enabled = 0
"let g:airline#extension#branch#enabled = 0
"let g:airline#extension#tabline#enabled = 0
"let g:airline#extension#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"let g:airline#extension#tabline#show_buffers = 0
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

"===============
"=============== NERDTree
"===============

map ff :NERDTreeToggle<CR>

let NERDTreeMapOpenSplit = 'h'
let NERDTreeMapToggleHidden = 'zh'
" change original key is K, but I need K = 5 line down
" Hence, I map this jump fun to Q
let NERDTreeMapJumpFirstChild = 'Q'




"===============
"=============== coc-nvim
"===============

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


"execute "set <M-u>=u"

inoremap <silent><expr> <M-u>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><M-o> pumvisible() ? "\<C-o>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


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


" Function Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


"COC extension manager:
let g:coc_global_extensions = [
	\ 'coc-python', 
	\ 'coc-pairs',
	\ 'coc-texlab',
	\ 'coc-marketplace']


"===============
"=============== Skip Pair
"===============
" 定义跳出括号函数，用于跳出括号

func SkipPair()
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc
" 将tab键绑定为跳出括号
"execute "set <M-n>=n"
inoremap <M-n> <c-r>=SkipPair()<CR>

"inoremap <space>j <c-r>=SkipPair()<CR>
"inoremap <c-j> <c-r>=SkipPair()<CR>



"===============
"=============== Indentline
"===============

let g:indentLine_char='|'
let g:indentLine_enabled = 1




"===============       ================
"=============== Latex ================
"===============       ================



"===============
"=============== vimtex
"===============
let g:tex_flavor = 'pdflatex'
" open content
nnoremap <leader>t :VimtexTocOpen<CR>


"===============
"=============== vim live pdf
"===============

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile=1



"===============
"=============== UltiSnips
"===============


"打开snippet自定义界面
noremap <LEADER>= :UltiSnipsEdit<cr>

"打开 实时编译并预览pdf的功能
noremap <LEADER>- :LLPStartPreview<cr>


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" put your own snippet here:
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

"===============
"===============inkscape
"===============
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-F> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

"===============
"=============== Anti conceal math equation code
"===============

"  设置latex不会把数学公式代码自动转换，，尤其不会把$隐藏起来，，很有用！！！

autocmd Filetype tex setlocal conceallevel=0
autocmd Filetype plaintex setlocal conceallevel=0

let g:tex_conceal = "0"



"===============
"=============== Taglist
"===============

"map <silent> T :TagbarOpenAutoClose<CR>



"===============
"=============== Fuzzyfile finder
"===============

map <C-f> :FZF<CR>



"===============
"=============== Placeholder
"===============
map <tab> <Esc>/<++><CR>:nohlsearch<CR>c4l














