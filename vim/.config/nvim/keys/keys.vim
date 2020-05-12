" reload config vim/neovim
map <leader>q :source ~/.config/nvim/init.vim<CR>

" Wq = wq
cmap Wq wq

" Q = q
cmap Q q

" Whitespace entfernen
nnoremap <leader>w :StripWhitespace<CR>

" Nerdtree
nnoremap <leader>2 :NERDTreeToggle<CR>
set pastetoggle=<leader>2

" undotree
nnoremap <leader>3 :UndotreeToggle<cr>

" visual reselect of just pasted
nnoremap gp `[v`]

"make enter break and do newlines
nnoremap <CR> i<CR><Esc>==

" open vimrc/init.vim
nnoremap <leader>v :vsp ~/.config/nvim/init.vim<CR>
nnoremap <leader>V :tabnew ~/.config/nvim/init.vim<CR>

" reload all open buffers
nnoremap <leader>RL :tabdo exec "windo e!"<CR>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Use regular replace
nnoremap <leader>s :%s /
vnoremap <leader>s :%s /

" fenster wechsel
nnoremap <C-y> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-x> :wincmd l<CR>

" alt + hjkl fenstergröße ändern
nnoremap <silent> <leader>x :vertical resize -2<CR>
nnoremap <silent> <leader>y :vertical resize +2<CR>

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

" Serch for Words in Document
nnoremap <leader>f /\v
vnoremap <leader>f /\v

" wordsearch end
nnoremap <leader>ff :nohlsearch<CR>
vnoremap <leader>ff :nohlsearch<CR>

" fzf suche
" nnoremap <C-f> :FZF<cr>, frage des nutzens? Wegen :Files
nnoremap <leader>p :Rg<cr>
map <leader>z :Files<CR>
map <leader>b :Buffers<CR>

" TAB zum nächsten Buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB zurück Buffer
nnoremap <S-TAB> :bprevious<CR>

" Besser mit Tab verschieben
vnoremap < <gv
vnoremap > >gv

" commentary
nnoremap <leader>7 :Commentary<CR>
vnoremap <leader>7 :Commentary<CR>

" YouCompleteMe
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
