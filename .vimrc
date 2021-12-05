set nocompatible
filetype plugin on
syntax on
set number
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

set cursorline cursorcolumn
highlight CursorColumn ctermbg=LightGrey

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" syntastic settings end

" Vim Kitty Navigator
let g:kitty_navigator_no_mappings = 1

nnoremap <silent> <c-Left> :KittyNavigateLeft<cr>
nnoremap <silent> <c-Down> :KittyNavigateDown<cr>
nnoremap <silent> <c-Up> :KittyNavigateUp<cr>
nnoremap <silent> <c-Right> :KittyNavigateRight<cr>
" Vim Kitty Navigator End


call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'psliwka/vim-smoothie'
Plug 'fladson/vim-kitty'
Plug 'knubie/vim-kitty-navigator', {'do': 'cp ./*.py ~/.config/kitty/'}
call plug#end()
