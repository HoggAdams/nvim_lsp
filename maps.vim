"-------------------------------------------------------------------------------
" window
"-------------------------------------------------------------------------------
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

"--------------------------------------------------------------------------------
" mode
"--------------------------------------------------------------------------------
" normal
nmap <C-j> 5j
nmap <C-k> 5k
nmap <C-l> 5l
nmap <C-h> 5h

nmap L $
nmap H ^

nmap i <insert><Right>
nmap I <insert>

nmap wq :wq<CR>
nmap sa :q!<CR>
nmap qq :q<CR>
nmap W :w<CR>

nmap <C-a> gg<S-v>G

nnoremap + <C-a>
nnoremap - <C-x>

nnoremap a q
nnoremap <silent><leader>yy <cmd>lua require('itkey.md').markdownCopyPlus()<CR>
" insert
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
inoremap jk <Esc>
" command
nmap ; :
" visual
vmap H ^
vmap L $
vmap <C-j> 5j
vmap <C-k> 5k
vmap <C-l> 5l
vmap <C-h> 5h

"--------------------------------------------------------------------------------
" Buffers 
"--------------------------------------------------------------------------------
" Open current director
nmap tt :tabedit
nmap tn :bnext<Return>
nmap ti :bprev<Return>
nmap t- <Plug>(choosewin)
nmap tmn :-tabmove<CR>
nmap tmi :+tabmove<CR>

map <Down> :res +5<CR>
map <Up> :res -5<CR>
map <Left> :vertical resize-5<CR>
map <Right> :vertical resize+5<CR>

"---------------------------------------------------------------------------------
" Macro
"---------------------------------------------------------------------------------
nmap ` @

nmap <space>f :Format<CR> 
nmap <space>e :NvimTreeToggle<CR>
nmap <space>t :Translate<CR>
nmap <space>T :TranslateW<CR>
nmap <space>o :SymbolsOutline<CR>

nmap <space>ms :MarkdownPreviewStop<CR>
nmap <space>mt :MarkdownPreviewToggle<CR>

autocmd Filetype markdown noremap <space>mt :MarkdownPreviewToggle<CR>
