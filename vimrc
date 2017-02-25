" ##############################################################
"                   MY VIMRC CONFIGURATION
" @uthor: Dailson Gomes
" GitHub Adress: https://github.com/Dailson 
"
" ##############################################################


"-------------------- BEGIN VUNDLE ---------------------------
" ------------------------------------------------------------- 
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ---------Plugins -------------
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'morhetz/gruvbox'
  Plugin 'kien/ctrlp.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'edkolev/tmuxline.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'xuyuanp/nerdtree-git-plugin'
  Plugin 'mattn/emmet-vim' 
 "Plugin 'Lokaltog/vim-powerline'
 "Plugin 'bling/vim-bufferline'
  Plugin 'valloric/youcompleteme'
 "Plugin 'ryanoasis/vim-webdevicons'
 "Plugin 'ryanoasis/vim-devicons'
 "Plugin 'ryanoasis/nerd-fonts'
 "Plugin 'flazz/vim-colorschemes'
 "Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" -------------------- END VUNDLE -----------------------------
" 
" -------------------------------------------------------------



" -------------------- BEGIN NERDTREE -------------------------
" ------------------------------------------------------------- 
map <C-n> :NERDTreeToggle<CR> 

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -------------------- END NERDTREE----------------------------
" -------------------------------------------------------------



" -------------------- BEGIN NERDTREE-TAB----------------------
" -------------------------------------------------------------
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_console_startup = 1

" INSTRUCTION
" t   # Open file in a new tab
" gt  # Switch to the next tab
" gT  # Switch to the previous tab
" :q  # Close current tab
" Ctrl + ww  # Switch to different blocks

" -------------------- END NERDTREE-TAB -----------------------
" -------------------------------------------------------------



" -------------------- BEGIN POWERLINE ------------------------
" -------------------------------------------------------------
set encoding=utf-8

set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/

let g:Powerline_stl_path_style = 'filename'

set showtabline=1

set laststatus=2  " Always display the status line

set term=screen-256color

set t_Co=256

let g:Powerline_symbols = 'fancy'

" -------------------- END POWERLINE --------------------------
" -------------------------------------------------------------



" -------------------- BEGIN NERDTREE-GIT----------------------
" -------------------------------------------------------------
set shell=sh
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }

"let g:NERDTreeUseSimpleIndicator = 1

" -------------------- END NERDTREE-GIT -----------------------
" -------------------------------------------------------------



" -------------------- BEGIN IDENT-GUIDE ----------------------
" -------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1

set ts=4 sw=4 et

let g:indent_guides_start_level=2

let g:indent_guides_guide_size = 1

" -------------------- END IDENT-GUIDE ------------------------
" -------------------------------------------------------------



" -------------------- BEGIN AIRLINE status and theme----------
" -------------------------------------------------------------
set ttimeoutlen=50

let g:airline#extensions#tabline#enabled = 1 

let g:airline#extensions#hunks#enabled=0

let g:airline#extensions#branch#enabled=1

let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#tabline#left_sep = ' '

let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts = 1 

let g:airline_theme='jellybeans'

let g:airline_section_y = 'BN: %{bufnr("%")}'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"

" -------------------- END AIRLINE status and theme -----------
" -------------------------------------------------------------



" -------------------- BEGIN GRUVBOX --------------------------
" -------------------------------------------------------------

colorscheme gruvbox

let g:gruvbox_contrast_dark='medium'

set background=dark

autocmd QuickFixCmdPost *grep* cwindow

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>


nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" -------------------- END GRUVBOX ----------------------------
" -------------------------------------------------------------


" -------------------- BEGIN  EMMET ---------------------------
" -------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" -------------------- END  EMMET -----------------------------
" -------------------------------------------------------------



" -------------------- BEGIN SYNTASTIC and checkers -----------
" -------------------------------------------------------------

set statusline+=%#warningmsg#

set statusline+=%{SyntasticStatuslineFlag()}

set statusline+=%*

"set smartindent

let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list =1 

let g:syntastic_check_on_open =1 

let g:syntastic_check_on_wq = 0

"
let g:syntastic_enable_signs = 1

"
let g:syntastic_aggregate_errors = 1

"let g:syntastic_error_symbol = "X"
"let g:syntastic_style_error_symbol = ">"
"let g:syntastic_warning_symbol = "!"
"let g:syntastic_style_warning_symbol = ">"


" ------------ Javascript
"let g:syntastic_javascript_checkers = ['jshint']

" ------------ CoffeeScript
"let g:syntastic_coffeescript_checkers = ['coffeelint']

" ------------- Ruby
"let g:syntastic_ruby_checkers = ['rubylint', 'reek']


" ------------- Python
"let g:syntastic_python_checkers = ['pylint']

" ------------- Markdown
"let g:syntastic_markdown_checkers = ['mdl']

" ------------- Python
"let g:syntastic_python_checkers = ['flake8', 'python']

" ------------- Html
"let g:syntastic_html_checkers = ['validator']

"let g:html_indent_inctags = "html,body,head,tbody"
" -------------------- END SYNTASTIC and checkers -------------
" -------------------------------------------------------------


" -------------------- BEGIN CTRL+P ---------------------------
" -------------------------------------------------------------
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_user_command = 'find %s -type f'  " MacOSX/Linux

" -------------------- END CTRL+P -----------------------------
" -------------------------------------------------------------



" -------------------- BASIC SETUP ----------------------------
" -------------------------------------------------------------
set backspace=2   " Backspace deletes like most programs in insert mode

set nobackup

set nowritebackup

set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-git"ignore#comment-458413287

set history=50

set ruler         " show the cursor position all the time

set showcmd       " display incomplete command

set autowrite     " Automatically :write before running commands

set autoread      " Reload files changed outside vim

" Trigger autoread when changing buffers or coming back to vim in terminal.
au FocusGained,BufEnter * :silent! !

set cursorline    " highlight the current line

set wildmenu

set wildmode=list:longest,full

set mouse=a       "Allow usage of mouse in iTerm

set ttymouse=xterm2

" Make searching better
 set gdefault      " Never have to type /g at the end of search / replace again

 set ignorecase    " case insensitive searching (unless specified)

 set smartcase

 set hlsearch

 nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching

 set incsearch " Makes search act like search in modern browsers

 set showmatch

" Softtabs, 2 spaces

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set smartindent

" 1 tab == 2 spaces
set shiftwidth=2 "Defines the size of the identation in 2 spaces"
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent "Auto indent
set smartindent "Smart indent connects the the intelligent  identation
set wrap "Wrap lines
set cindent
imap <C-Return> <CR><CR><C-o>k<Tab>


"set tabstop=4
"
" set shiftwidth=4
" 
" set shiftround
" 
" set expandtab
"
" set smarttab
"
" set lbr
"
" set tw=50
"
" set ai
"
" set si
"
" set wrap

" omni completetion
set omnifunc=syntaxcomplete#Complete

set number

"HTML Editing
set matchpairs+=<:>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Scrolling 
set scrolloff=17         "Start scrolling when we're 8 lines away from  margins

set sidescrolloff=15

set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu

function! ToggleNumbersOn()
  set nu!
  set rnu
endfunction

function! ToggleRelativeOn()
  set rnu!
  set nu
endfunction

autocmd FocusLost * call ToggleRelativeOn()

autocmd FocusGained * call ToggleRelativeOn()

autocmd InsertEnter * call ToggleRelativeOn()

autocmd InsertLeave * call ToggleRelativeOn()


" Quicker window movement
nnoremap <C-j> <C-w>j

nnoremap <C-k> <C-w>k

nnoremap <C-h> <C-w>h

nnoremap <C-l> <C-w>l

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Load up all of our plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" system clipboard copy & paste support
set pastetoggle=<F2> "F2 before pasting to preserve indentation

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
set mat=2

"Add a bit extra margin to the left
set foldcolumn=2

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Visual mode pressing * or # searches for the current selection
"Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

autocmd BufWrite *.coffee :call DeleteTrailingWS()
