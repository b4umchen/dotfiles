call plug#begin()

" StartScreen von Vim
Plug 'mhinz/vim-startify'

" Colorschemes und Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Um Funktionen in .vimrc/init.vim zu nutzen
Plug 'xolox/vim-misc'

" Darstellung der Hotekeys
Plug 'liuchengxu/vim-which-key'

" Buffers & built in Browser
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-vinegar'

" Nerdtree - Dateiexplorer
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" undotree
Plug 'mbbill/undotree'

" FZF Suchen
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Fenster switchen etc
Plug 'wesQ3/vim-windowswap'

" Visualisierter Tab Abstand im Code
Plug 'ntpeters/vim-better-whitespace'
Plug 'nathanaelkane/vim-indent-guides'

" Plug zum Auskemmentieren etc.
Plug 'tpope/vim-commentary'

" Vim schnelles Code bearbeiten
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'

" Vim like Editor
Plug 'Valloric/YouCompleteMe'

" Code Highlighter
Plug 'slim-template/vim-slim'

" Color Bracket
Plug 'luochen1990/rainbow'

" Öffnet Datein mit der Angegebenen Zeil zB: vim index.html:20
Plug 'bogado/file-line'

" Öffnet Datein am Ort wo du zuvor gewesen bist
Plug 'dietsche/vim-lastplace'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Github
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Programmierung
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'

" HTML & CS
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

call plug#end()
