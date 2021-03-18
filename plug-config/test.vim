" autocmd BufWritePre *.js Neoformat

" let g:neoformat_try_formatprg = 1

" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['prettier', 'eslint'],
" \}

" let g:ale_fix_on_save = 1

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

nnoremap <Leader>n :NvimTreeToggle<CR>

let g:nvim_tree_indent_markers = 1

let g:blamer_enabled = 1
let g:blamer_delay = 500

nnoremap <silent> <C-q> :Bdelete menu<CR>

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
