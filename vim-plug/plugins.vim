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
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe' 

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Scrolling
Plug 'psliwka/vim-smoothie'

" Colorschemes
Plug 'joshdick/onedark.vim'

" TPOPE STUFF
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" WHICH KEYY???
Plug 'liuchengxu/vim-which-key'

" Neoformat ?
Plug 'sbdchd/neoformat'

call plug#end()
