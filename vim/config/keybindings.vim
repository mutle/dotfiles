" Tab - Indent
nmap <TAB> >>
vmap <TAB> >>

" Shift-Tab - Unindent
nmap <S-TAB> <<
vmap <S-TAB> <<

" <leader> v - Vertical split
nmap <leader>v :vsplit<CR> <C-w><C-w>
" <leader> s - Horizontal split
nmap <leader>s :split<CR> <C-w><C-w>

" <leader> w - Window commands 
nmap <leader>w <C-w><C-w>_

" ,hjkl - Move cursor to window
nmap ,h <C-w>h
nmap ,j <C-w>j
nmap ,k <C-w>k
nmap ,l <C-w>l

" Get rid of awkward Ex-mode
map Q <Esc>

" Plugin keybindings

" <leader> t - Toggle Tag list
map <Leader>t :TlistToggle<CR>


" Ctrl-b - Show BufExplorer
map <C-b> <ESC>:BufExplorer<RETURN>

" <leader> n - Show NerdTree
map <leader>n <ESC>:NERDTreeToggle<RETURN>
" <leader> f - Show current file in NerdTree
map <leader>f <ESC>:NERDTreeFind<RETURN>
