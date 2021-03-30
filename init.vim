source ~/.config/nvim/general/sets.vim
source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/theme.vim 
source ~/.config/nvim/keys/mappings.vim

" luafile ~/.config/nvim/lua/lsp-config.lua
" luafile ~/.config/nvim/lua/plugins/compe.lua
" luafile ~/.config/nvim/lua/plugins/saga.lua

" source ~/.config/nvim/plug-config/lsp-config.vim
" source ~/.config/nvim/plug-config/compe.vim
" source ~/.config/nvim/plug-config/saga.vim
source ~/.config/nvim/plug-config/telescope.vim
source ~/.config/nvim/plug-config/lightline.vim

source ~/.config/nvim/plug-config/test.vim

luafile ~/.config/nvim/lua/jsbeckr/telescope.lua
luafile ~/.config/nvim/lua/treesitter.lua

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 120})
augroup END

