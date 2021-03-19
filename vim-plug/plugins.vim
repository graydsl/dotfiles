call plug#begin(stdpath('data') . '/plugged')

" Languages and Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Lightline
Plug 'itchyny/lightline.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language Server Stuff
" Plug 'neovim/nvim-lspconfig'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Scrolling
Plug 'psliwka/vim-smoothie'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'flrnprz/plastic.vim'
Plug 'morhetz/gruvbox'

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
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-unimpaired'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'APZelos/blamer.nvim'
Plug 'Asheq/close-buffers.vim'
Plug 'mattn/emmet-vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-endwise'
" Plug 'rstacruz/vim-closer'
Plug 'mhinz/vim-startify'
Plug 'lilydjwg/colorizer'

call plug#end()
