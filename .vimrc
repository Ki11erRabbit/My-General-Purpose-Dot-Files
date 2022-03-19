set nocompatible
filetype plugin on
syntax on
set number
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

set cursorline cursorcolumn
highlight CursorColumn ctermbg=Black 
highlight CursorLine cterm=NONE ctermbg=Black

"-| syntastic settings |-
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"-| syntastic settings end |-

"-| Vim Kitty Navigator |-
let g:kitty_navigator_no_mappings = 1

nnoremap <silent> <c-m> :KittyNavigateLeft<cr>
nnoremap <silent> <c-n> :KittyNavigateDown<cr>
nnoremap <silent> <c-e> :KittyNavigateUp<cr>
nnoremap <silent> <c-i> :KittyNavigateRight<cr>
"-| Vim Kitty Navigator End |-

"-| Vim Smoothie Remap |-
nnoremap <silent> <c-l> <cmd>call smoothie#downwards()<CR>
nnoremap <silent> <c-u> <cmd>call smoothie#upwards()<CR>
nnoremap <silent> <c-j> <cmd>call smoothie#backwards()<CR>
nnoremap <silent> <c-y> <cmd>call smoothie#forwards()<CR>
map <unique> gg <cmd>call smoothie#cursor_movement('gg')<CR>
map <unique> G <cmd>call smoothie#cursor_movement('G')<CR>
"-| Vim Smoothie Remap End |-


call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'psliwka/vim-smoothie'
Plug 'fladson/vim-kitty'
Plug 'knubie/vim-kitty-navigator', {'do': 'cp ./*.py ~/.config/kitty/'}
Plug 'itchyny/calendar.vim'
Plug 'ervandew/supertab'
Plug 'ki11errabbit/vim-colemak-dh'
Plug 'mcchrish/nnn.vim'
Plug 'Ki11erRabbit/texgroff.vim'
call plug#end()

" Reload vim-colemak to remap any overridden keys
silent! source "$HOME/.vim/bundle/vim-colemak/plugin/colemak.vim"

