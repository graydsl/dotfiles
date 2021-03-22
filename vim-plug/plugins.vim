call plug#begin(stdpath('data') . '/plugged')
Plug 'svermeulen/vimpeccable'
" Plug 'svermeulen/vimpeccable-lua-vimrc-example'

" Languages and Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Lightline
Plug 'itchyny/lightline.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Language Server Stuff
" Plug 'neovim/nvim-lspconfig'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'ryanoasis/vim-devicons'
" Plug 'kyazdani42/nvim-tree.lua'

" Scrolling
Plug 'psliwka/vim-smoothie'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'flrnprz/plastic.vim'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" TPOPE STUFF
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" WHICH KEYY???
Plug 'liuchengxu/vim-which-key'

" TEST
Plug 'mhinz/vim-signify'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-unimpaired'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'APZelos/blamer.nvim'
Plug 'Asheq/close-buffers.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'lilydjwg/colorizer'
Plug 'junegunn/goyo.vim'
Plug 'elixir-editors/vim-elixir'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
