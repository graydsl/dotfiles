" Window Management
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" Which Key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" " Alternate way to quit
" nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>

" easy change root dir
nnoremap <leader>cd :cd %:p:h<CR>

" quick source
nnoremap <leader>vr :so ~/.config/nvim/init.vim<CR>
