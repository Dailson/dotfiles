" ################################################################
" #               .::MY VIMRC CONFIGURATION::.                  #
" ###############################################################
" #                                                             #
" #                  @uthor: Dailson Gomes                      #
" #          GitHub Adress: https://github.com/Dailson          #
" #                                                             #
" #     OBS .: This file is constantly updated and modified     #
" ###############################################################



" #####################  BEGIN VUNDLE  ##########################
" --------------------------------------------------------------- 
  set nocompatible             
  filetype off                  

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

" ---------------------    Plugins    ---------------------------{{{

" VUNDLE
  Plugin 'VundleVim/Vundle.vim'
"  
"" NAVIGATION 
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs' 
"	
"" SYNTAX
  Plugin 'scrooloose/syntastic'
"	
"" STATUSLINE AND THEME 
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
"  
"" GIT
  Plugin 'tpope/vim-fugitive' 
  Plugin 'xuyuanp/nerdtree-git-plugin' 
  Plugin 'airblade/vim-gitgutter'
"
"" THEME
  Plugin 'sickill/vim-monokai' 
  Plugin 'ajh17/spacegray.vim' 
"
"" AUTOCOMPLETE	
  Plugin 'valloric/youcompleteme' 
"  
"" RUBY ON RAILS -------
  Plugin 'tpope/vim-rails' 
  Plugin 'vim-ruby/vim-ruby' 
"
  Plugin 'sirver/ultisnips' 
  Plugin 'honza/vim-snippets'
"
  Plugin 'rking/ag.vim'
  Plugin 'tpope/vim-repeat' 
  Plugin 'tpope/vim-surround' 
  Plugin 'tomtom/tcomment_vim' 
"" ---------------------------- 
"  
"" CLOSE BUFFERS WITHOUT CLOSE THE WINDOW
  Plugin 'qpkorr/vim-bufkill'
"
"" INDENTATION
  Plugin 'yggdroot/indentline'
"
"" CTRL P
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'iurifq/ctrlp-rails.vim'
"" HTML
  Plugin 'mattn/emmet-vim' 
"
"" JAVASCRIPT
  Plugin 'pangloss/vim-javascript'
"
  Plugin 'marijnh/tern_for_vim' 

" TO SEE LATER...{{{
" ctags
" ctag
" Plugin 'wikitopian/hardmode'
" Plugin 'rstacruz/spparkup' " (x)
" Plugin 'othree/html5.vim' "(x)
" Plugin 'joonty/vdebug'
" Plugin 'szw/vim-ctrlspace' "(x)
" Plugin 'wincent/command-t' "(x)
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'jelera/vim-javascript-syntax' "(x)
" Plugin 'othree/javascript-libraries-syntax.vim' "(x)
" Plugin 'easymotion/vim-easymotion'
" Plugin 'arnaud-lb/vim-php-namespace'
" Plugin 'ervandew/supertab'
" Plugin 'JamshedVesuna/vim-markzadown-preview'}}}}}}

	
 call vundle#end()            
 filetype plugin indent on    

" #####################  END VUNDLE  ############################
" --------------------------------------------------------------- 

" ##################### BEGIN NERDTREE #########################{{{
" -------------------------------------------------------------- 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
"let g:nerdtree_tabs_open_on_gui_startup=1
"let g:nerdtree_tabs_open_on_console_startup=1
"map <C-m> <plug>NERDTreeMirrorOpen<CR>
"locate current file in NERDTree
map <leader>l :NERDTreeFind<cr>
"close vim if only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" #####################  END NERDTREE ###########################
" --------------------------------------------------------------- 
"}}}



" #####################  BEGIN NERDTREE GIT######################{{{
" --------------------------------------------------------------- 

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
"}}}

"" ##################### BEGIN AIRLINE status and theme ##########{{{
"" ---------------------------------------------------------------
 set showtabline=0

 set laststatus=2  " Always display the status line

 let g:airline_symbols = {}

 let g:airline_detect_modified=1

 let g:airline_detect_paste=1

 let g:airline_detect_crypt=1
  
 let g:airline_detect_spell=1

 let g:airline_detect_iminsert=0

 let g:airline_inactive_collapse=1

 let g:airline_powerline_fonts = 1

 let g:airline_extensions = ['branch', 'tabline']

 let g:airline_theme='jellybeans'

 let g:airline_section_y = 'BN: %{bufnr("%")}'

"  let g:airline_mode_map = {
"    \ '__' : '-',
"    \ 'n'  : 'N',
"    \ 'i'  : 'I',
"    \ 'R' : 'R',
"    \ 'c'  : 'C',
"    \ 'v'  : 'V',
"    \ 'V'  : 'V',
"    \ '' : 'V',
"    \ 's'  : 'S',
"    \ 'S' : 'S',
"    \ }

  let g:airline#extensions#tabline#left_sep = ' '

  let g:airline#extensions#tabline#left_alt_sep = '|'

  let g:airline_left_sep          = '▶'

  let g:airline_left_alt_sep      = '»'

  let g:airline_right_sep         = '◀'

  let g:airline_right_alt_sep     = '«'

  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇

  let g:airline#extensions#readonly#symbol   = '⊘'

  let g:airline#extensions#linecolumn#prefix = '¶'

  let g:airline#extensions#paste#symbol      = 'ρ'

  let g:airline_symbols.linenr    = '␊'

  let g:airline_symbols.branch    = '⎇'

  let g:airline_symbols.paste     = 'ρ'

  let g:airline_symbols.paste     = 'Þ'

  let g:airline_symbols.paste     = 'PASTE'

  let g:airline_symbols.whitespace = 'Ξ'

" #################### END AIRLINE status and theme ###########
"" -------------------------------------------------------------
"}}}
 
 
 
" vim - javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1



"enable keyboard shorcuts
let g:tern_map_keys=1

" show arguments hists
let g:tern_show_argument_hints='on_hold'


"ultisnips

" trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



"" #################### BEGIN  EMMET ###########################{{{
"" -------------------------------------------------------------
	let g:user_emmet_mode='a'    "enable all function in all mode.
"" #################### END  EMMET #############################
"" -------------------------------------------------------------
"}}}
"
"" #################### BEGIN FUGIVITE #########################{{{
"" -------------------------------------------------------------
set statusline=%{fugitive#statusline()}
"
set statusline=%{fugitive#head()}
"" #################### END FUGITIVE ###########################
"" -------------------------------------------------------------
"}}}
"
"
"
"" #################### BEGIN SYNTASTIC AND CHACKERS ###########{{{
"" -------------------------------------------------------------
set statusline+=%#warningmsg#
"
set statusline+=%{SyntasticStatuslineFlag()}
"
set statusline+=%*
"
"
let g:syntastic_error_symbol='✗'
"
let g:syntastic_warning_symbol='⚠'
"
let g:syntastic_style_error_symbol = '✗'
"
let g:syntastic_style_warning_symbol = '⚠'
"
let g:syntastic_auto_loc_list=1
"
let g:syntastic_aggregate_errors = 1
"
let g:syntastic_always_populate_loc_list = 1
"
let g:syntastic_auto_loc_list =1 

let g:syntastic_check_on_open =1 

let g:syntastic_check_on_wq = 0

" ------------ Javascript
let g:syntastic_javascript_checkers = ['jshint']

" ------------ CoffeeScript
let g:syntastic_coffeescript_checkers = ['coffeelint']

" ------------- Markdown
"let g:syntastic_markdown_checkers = ['mdl']

" ------------- Python
let g:syntastic_python_checkers = ['pylint', 'flake8', 'python']
"
"" #################### END SYNTASTIC AND CHACKERS #############
"" -------------------------------------------------------------}}}
"
"
"
"" -------------------- BEGIN CTRL+P ---------------------------{{{
"" -------------------------------------------------------------
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

let g:ctrlp_user_command = 'find %s -type f'  " MacOSX/Linux
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" -------------------- END CTRL+P -----------------------------
"}}}

" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

"" -------------------- BEGIN COLORSCHEME-----------------------
"" -------------------------------------------------------------
colorscheme   monokai "spacegray 
"  
"set term=screen-256color
"
"" --------------------  END COLORSCHEME-----------------------
"" -------------------------------------------------------------
"
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none
highlight Comment cterm=italic
"" vim JavaScript
let g:javascript_plugin_jsdoc = 1


"rails search 
if filereadable('config/environment.rb') && isdirectory('app')
    " This looks like a Rails app.
    nnoremap <leader>ec :CtrlP app/controllers<CR>
    nnoremap <leader>eh :CtrlP app/helpers<CR>
    nnoremap <leader>em :CtrlP app/models<CR>
    nnoremap <leader>ev :CtrlP app/views<CR>
endif

"" -------------------- BASIC SETUP ----------------------------{{{
"-------------------------------------------------------------
set encoding=utf-8

set pastetoggle=<F2> "F2 before pasting to preserve indentation

"ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" A buffer becomes hidden when it is abandoned
set hid

set updatetime=250

set nobackup

set noswapfile

set nowritebackup

set showcmd       " display incomplete command

set autoread      " Reload files changed outside vim

set wildmenu 	  " Command line completation

set wildmode=list,full " List all matches of completation possibility

set history=50 " Print the history of the last entered commands

set cursorline    " highlight the current line

set mouse=a       "Allow usage of mouse in iTerm

set mousefocus " puts focus on the current window

set mousehide

set ignorecase    " case insensitive searching (unless specified)

set smartcase "Used with ignorecase

set hlsearch " highlight all the matches on na search

set incsearch " highlight a pattern when a search is typing

"set smartindent "autoindenting when stating a new line. Works for C-like

"set autoindent " used with smartindent

"" ident withou tab
set expandtab
set shiftwidth=2 "Defines the size of the identation in 2 spaces"
set softtabstop=2

" ident with tab

"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"set noexpandtab


" inentation with tab and space; mixe
"set shiftwidth=2
"set softtabstop=2

set smarttab

set linebreak "the line break

set textwidth=500 " the line break will happen when reatch 500

set scrolloff=17         "Start scrolling when we're 8 lines away from  margins

set sidescrolloff=15

set sidescroll=1

set number

"fold
set foldmethod=marker


set relativenumber

" When press f3 relative number will be off
nmap <silent> <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

"" Quicker window movement
nnoremap <C-j> <C-w>j

nnoremap <C-k> <C-w>k

nnoremap <C-h> <C-w>h

nnoremap <C-l> <C-w>l


set cmdheight=2 " number of screen lines to use the the command-line

set backspace=eol,start,indent " Configure backspace  so it acts as it should act

set whichwrap+=<,>,h,l

set lazyredraw " Don't redraw while executing macros (goo performance config)

set magic " For regular expressions turn magic on

set foldcolumn=1 " Add a bit extra margin to the left

set ffs=unix,dos,mac " Use unix as the standard file type

set timeoutlen=1000 ttimeoutlen=0 "" Removing the delay of ESC key

"" Do not add a newline when select a suggestion on youcompleteme box
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"" Switch syntax highlighting on, when the terminal has colors
"" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif
"

"" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

autocmd BufWrite *.coffee :call DeleteTrailingWS()


filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

let g:rubycomplete_rails = 1

" vim -budffil(close buffer)

nnoremap <F4> :BD<CR>

" Move to the previous buffer with "gp"
 nnoremap <F5> :bp<CR>
"
" " Move to the next buffer with "gn"
 nnoremap <F6> :bn<CR>
"}}}

