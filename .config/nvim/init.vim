
"----| Settings |----
"-| General |-
if !has('gui_running')
	set t_Co=256
endif
syntax on
filetype plugin indent on
set relativenumber
set number
set mouse=a
set ignorecase
set smartcase
set termguicolors
set wildmode=longest,list,full
set cursorline cursorcolumn
highlight CursorColumn ctermbg=237 guibg=#3f3f3f
highlight CursorLine cterm=NONE ctermbg=237 guibg=#3f3f3f
highlight Pmenu ctermfg=0 ctermbg=13 guifg=#eeeeee guibg=#2a2a2a
highlight PmenuSel ctermfg=0 ctermbg=13 guifg=#eeeeee guibg=#006495
highlight Visual ctermbg=Black guibg=#222222 
let g:Hexokinase_highlighters = ['backgroundfull']

"----| Lightline Colorscheme |----
let g:lightline = {
      \ 'colorscheme': 'st',
      \ }

"-| Syntastic |-
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




"----| Key Maps |----
"-| Vim Smoothie |-
nnoremap <silent> <c-l> <cmd>call smoothie#downwards()<CR>
nnoremap <silent> <c-u> <cmd>call smoothie#upwards()<CR>
nnoremap <silent> <c-j> <cmd>call smoothie#backwards()<CR>
nnoremap <silent> <c-y> <cmd>call smoothie#forwards()<CR>
map <unique> gg <cmd>call smoothie#cursor_movement('gg')<CR>
map <unique> G <cmd>call smoothie#cursor_movement('G')<CR>

"-| Spell Checking |-
map <leader>s :setlocal spell! spelllang=en_us<CR>

"-| Number Toggle |-
function!ToggleNumbers()
	:setlocal invnumber
	:setlocal invrelativenumber
endfunction
nnoremap <leader>n <cmd>call ToggleNumbers()<CR>
nnoremap <leader>N :setlocal invrelativenumber<CR>

"-| Navigate Windows |-
map <A-m> <C-w>h
map <A-n> <C-w>j
map <A-e> <C-w>k
map <A-i> <C-w>l

"-| Tabcompletion for COC |-
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"-| NNN |-
tnoremap <C-A-n> <cmd>NnnExplorer<CR>
nnoremap <C-A-n> <cmd>NnnExplorer %:p:h<CR>
tnoremap <C-A-p> <cmd>NnnPicker<CR>
nnoremap <C-A-p> <cmd>NnnPicker<CR>
nnoremap <leader>p :NnnPicker<CR>

"----| Vim Plug |----
call plug#begin()
"-| Development |-
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"-| Nicities |-
Plug 'itchyny/lightline.vim'
Plug 'psliwka/vim-smoothie'
"-| Utilities |-
Plug 'vimwiki/vimwiki'
Plug 'ki11errabbit/vim-colemak-dh'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'luukvbaal/nnn.nvim'
Plug 'tpope/vim-eunuch'
call plug#end()

lua << EOF
require("nnn").setup()
EOF

" Reload vim-colemak to remap any overridden keys
silent! source "$HOME/.local/share/nvim/plugged/vim-colemak-dhvim-colemak/plugin/colemak-dh.vim"
