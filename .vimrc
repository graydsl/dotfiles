" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

set nowrap

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=1

" Display line numbers on the left
set number

" AWESOME RELATIVE LINENUMBERS!!! :D
set relativenumber

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Disable these annoying swapfiles
set noswapfile
set nobackup

set switchbuf=usetab,newtab

" refresh files automatically
set autoread

"------------------------------------------------------------
" Indentation options {{{1

" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" A more usefull leader for germans!! :D
let mapleader=","

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Redraw screen aka clear highlights
nnoremap <leader>r :nohl<cr>

" Fast edit .vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" Format whole document
nnoremap <leader>f gg=G<cr>

" fast save 
"vnoremap <C-s> <ESC>:w<cr>v
"nnoremap <C-s> :w<cr>
"inoremap <C-s> <ESC>:w<cr>a

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" remapped arrows to NOTHING --- i will die :D
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> :tabp<cr>
nnoremap <Right> :tabn<cr>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" switch .h/.cpp
nnoremap <f4> :A<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" No F1 for help
noremap <f1> <esc>

" nnoremap <s-h> ^
" nnoremap <s-l> $

" Jump around Jump around jumpjumpjump AROUND!
nnoremap J 5j
nnoremap K 5k

nnoremap <c-w> :tabclose<cr>

"------------------------------------------------------------}}}
" Folding {{{

set foldlevelstart=0
"set foldmethod=indent
"set foldnestmax=10

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" "Focus" the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
"nnoremap <c-t> mzzMzvzz15<c-e>`z:Pulse<cr>

" }}}
" Plugins {{{
" NeoBundle Stuff {{{
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim'

" Original repos on github
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'

" Language Plugins
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'tikhomirov/vim-glsl'
NeoBundle 'digitaltoad/vim-jade'

" Autocompletion
NeoBundle 'Valloric/YouCompleteMe'

" Snipmate and deps
" TODO: ULTISNIPS
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

" vim-scripts repos
NeoBundle 'a.vim'
"NeoBundle 'clang-complete'

" Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'

" gist repos
"NeoBundle 'gist:Shougo/656148', {
"\ 'name': 'everything.vim',
"\ 'script_type': 'plugin'}

" Non git repos
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
" }}}
" NERDTree {{{
   nnoremap <F2> :NERDTreeToggle<cr>
   inoremap <F2> <esc>:NERDTreeToggle<cr>

   let NERDTreeIgnore = ['\.o$', '\.d']
" }}}
" Tagbar {{{
   nnoremap <F8> :TagbarToggle<cr>
   inoremap <F8> <esc>:TagbarToggle<cr>
" }}}
" Powerline {{{

let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

" }}}
"ctrlp {{{
set wildignore+=\*/node_modules/\*
set wildignore+=*.o,*.d

" move to tag in file
nnoremap <c-t> :CtrlPBufTag<cr> 
nnoremap <c-p> :CtrlPMixed<cr>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
"}}}
" Syntastic {{{
let g:syntastic_cpp_compiler_options = ' -std=c++11'
" }}}
" vim-javascript {{{
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_scriptl = "inc"
let g:html_indent_style1 = "inc"
" }}}
" youcompleteme {{{
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1 
" }}}
" UltiSnips {{{
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let always_use_first_snippet=1
let g:always_use_first_snippet=1
" }}}
" }}}
" Language Specifics {{{
" VIM {{{
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
    au FileType help setlocal textwidth=78
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
augroup END
" }}}
" C {{{

augroup ft_c
    au!
    au FileType c setlocal foldmethod=marker foldmarker={,}
augroup END

" }}}
" Jade {{{
augroup ft_jade
    au!
    au FileType jade setlocal sts=2 sw=2 et
augroup END
" }}}
" JavaScript {{{
augroup ft_js
    au!
    au FileType javascript setlocal sts=2 sw=2 et
augroup END
" }}}
" }}}
" Colorscheme {{{
syntax on

set t_Co=256
set background=dark
colorscheme Monokai
" }}}
" Autocommands {{{
" VIMRC Live Reloading {{{
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END
" }}}
" Random AU {{{
augroup relativeLineNumbers
    au!
    autocmd InsertEnter * :set number
    autocmd InsertLeave * :set relativenumber
augroup END
" }}}
" }}}
