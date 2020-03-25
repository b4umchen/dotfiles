"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Haupteinstellung

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8

set nocompatible
syntax on
filetype off

let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug´s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ordner für Vi-Plug und Installations Bereich für Plug´s
call plug#begin()

" StartScreen von Vim
Plug 'mhinz/vim-startify'

" Colorschemes und Themes
Plug 'arcticicestudio/nord-vim'

" Airline zur Gestalltung der ButtomBar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Um Funktionen in .vimrc zu nutzen
Plug 'xolox/vim-misc'

" Buffers & built in Browser
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-vinegar'

" Nerdtree - Dateiexplorer
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'

" Fenster switchen etc
Plug 'wesQ3/vim-windowswap'

" Visualisierter Tab Abstand im Code
Plug 'thaerkh/vim-indentguides'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'

" Plug zum Auskemmentieren etc.
Plug 'scrooloose/nerdcommenter'

" Vim schnelles Code bearbeiten
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

" Code Highlighter
Plug 'slim-template/vim-slim'

" Color Bracket
Plug 'luochen1990/rainbow'

" Öffnet Datein mit der Angegebenen Zeil zB: vim index.html:20
Plug 'bogado/file-line'

" Öffnet Datein am Ort wo du zuvor gewesen bist
Plug 'dietsche/vim-lastplace'

" möglichkeit zB = auf die gleiche höhe zu machen, zur ordentlichen Darstellung
Plug 'godlygeek/tabular'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Github
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Programmierung
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'plasticboy/vim-markdown'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'markdown', 'vue', 'yaml', 'html'] }

" HTML & CS
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

" Javascript
Plug 'othree/javascript-libraries-syntax.vim'
" Vue.js
Plug 'posva/vim-vue'
Plug 'leafoftree/vim-vue-plugin'
" Node.js
Plug 'moll/vim-node'
" Express.js
Plug 'tommcdo/vim-express'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Design

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colorschemes und Themes
syntax on
colorscheme nord

" Airline zur Gestalltung der ButtomBar
let g:airline_theme                            =  "nord"
let g:airline_powerline_fonts                  =  1
let g:airline_enable_branch                    =  1
let g:airline#extensions#tabline#formatter     =  'unique_tail'
let g:airline#extensions#branch#empty_message  =  "no .git"
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#left_sep      = ' '
let g:airline#extensions#tabline#left_alt_sep  = '|'
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter

" Zulanger Textinhalt
set colorcolumn=
highlight OverLength ctermbg=gray ctermfg=white guibg=#999999
match OverLength /\%81v.\+/

highlight ColorColumn ctermbg=gray
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set colorcolumn=80

set list
set listchars=tab:▸\ ,eol:¬


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Variablen

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
set termguicolors
"set notermguicolors
set t_Co=256
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set showcmd
set lazyredraw
set hls
"set number
set relativenumber
set cursorline
set title
set numberwidth=1
set ls=2
set cursorline
set wrap
set formatoptions=tcrq
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
set textwidth=80
set wildmenu
set noshowmode
set cmdheight=1
set nofoldenable
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set noswapfile
set undofile
set history=100
set undolevels=100
set mouse=a
set nrformats=
set tags=tags
set autowrite
set autoread
set clipboard+=unnamed
set scrolljump=-10
set updatetime=300
set shortmess+=c
set signcolumn=yes
set wildmode=list:longest,full
set backupcopy=yes
set omnifunc=syntaxcomplete#Complete
set termguicolors
set ttyfast
set lazyredraw
set list
set listchars=tab:»·,trail:·,nbsp:·


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Custom Keys

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Wq = wq
cmap Wq wq

" Whitespace entfernen
nnoremap <leader>w :StripWhitespace<CR>

" Nerdtree
nnoremap <leader>2 :NERDTreeToggle<CR>

" visual reselect of just pasted
nnoremap gp `[v`]

"make enter break and do newlines
nnoremap <CR> i<CR><Esc>==

" open vimrc
nnoremap <leader>v :vsp ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>

" reload all open buffers
nnoremap <leader>RL :tabdo exec "windo e!"<CR>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Serch for Words in Document
nnoremap <leader>f /\v
vnoremap <leader>f /\v

" wordsearch end
nnoremap <leader>ff :nohlsearch<CR>
vnoremap <leader>ff :nohlsearch<CR>

" Use regular replace
nnoremap <leader>s :%s /
vnoremap <leader>s :%s /

" split key
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-x> <C-W><C-L>
nnoremap <C-y> <C-W><C-H>

" Tagbar
" ToDo
nmap <leader>- :TagbarToggle<CR>

" redo
nnoremap r :redo<CR>

" Übersicht aller Buffers (open/close)
nnoremap ; :BufExplorer<CR>

" Scrooloose
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

" Sortierungen
vnoremap <leader>s :'<,'>!sort -f<CR>

" show Gitstatus
nnoremap <leader>gs :Gstatus<CR>

" tab
nnoremap <leader>t :tabew

" windowswap
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" tmux keybindings
nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" ale gotodefinition
nnoremap <leader>k :ALEGoToDefinition<cr>
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Prettier
nnoremap <leader>e :Prettier<cr>

" fzf suche
nnoremap <leader>Z :FZF<cr>
nnoremap <leader>p :Rg<cr>

" ag suche
nnoremap <leader>z :Ag<space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Funktionen in Vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " persistent undo between file reloads
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/tmp,.
endif

" show trailing whitespaces
augroup ListChars2
    au!
    autocmd filetype go set listchars+=tab:\ \
    autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
augroup END

" Autopairs Settings
let g:AutoPairsMultilineClose = 0
let g:AutoPairsMapSpace = 0

" Indentlinien, klammer zu klammer etc
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" Nerdtree
set pastetoggle=<leader>2

" Disable inherited syntastic
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": [],
  \ "passive_filetypes": [] }

" gitgutter enable
let g:gitgutter_enabled = 1
let s:grep_available = 0
let g:gitgutter_escape_grep = 1
let g:gitgutter_grep=''
let g:gitgutter_terminal_reports_focus=0

let g:matchparen_insert_timeout=1
let g:bufExplorerFindActive=0

" windowswap
let g:windowswap_map_keys = 0

" tmux
let g:tmux_navigator_no_mappings = 1

" eslint & ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let b:ale_linter_aliases = ['javascript', 'vue', 'node']
let b:ale_linters = ['eslint', 'vls']
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

" color Bracket
let g:rainbow_active = 1

" vue (slow down vorbeugen)
let g:vue_pre_processors = []
let g:vim_vue_plugin_load_full_syntax = 1

" Ag, Silver-search, ack
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in fzf for listing files. Lightning fast and respects .gitignore
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap <leader><z> :Ag<SPACE>
  endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Programmiersettings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
