syntax enable
filetype off

let mapleader=","

set nocompatible
set encoding=utf-8
set pumheight=10
set background=dark
set termguicolors
"set notermguicolors
set t_Co=256
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
set relativenumber
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
set timeoutlen=300
set shortmess+=c
set signcolumn=yes
set wildmode=list,longest,full
set nobackup
set noerrorbells
set backupcopy=yes
set omnifunc=syntaxcomplete#Complete
set termguicolors
set ttyfast
set lazyredraw
set list
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set incsearch
set laststatus=0
set showtabline=2
set formatoptions-=cro
set clipboard=unnamedplus
set listchars=tab:▸\ ,eol:¬

set colorcolumn=
highlight OverLength ctermbg=gray ctermfg=white guibg=#999999
match OverLength /\%80v.\+/

highlight ColorColumn ctermbg=gray
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

 " persistent undo between file reloads
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/undodir/.tmp
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

" color Bracket
let g:rainbow_active = 1

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

au! BufWritePost $MYVIMRC source %

cmap w!! w !sudo tee %
