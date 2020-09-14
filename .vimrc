set cb=unnamedplus
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

noremap s <Nop>
noremap <leader>g "zyiw:grep -r <C-R>z .<CR><CR><CR>:copen<CR>
noremap <leader>] <C-W><C-V><C-W>l<C-]>
noremap <leader>b :browse oldfiles<CR>
noremap <leader>v :Vexplore<CR>
noremap <leader>h :noh<CR>
noremap <leader>q :q!<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>r :so $MYVIMRC<cr>

noremap <leader>p "0p
noremap <leader>P "0P

nnoremap U <C-R>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap ' 0i<Tab><C-c>
noremap " 0i//<C-c>

noremap Q @q
noremap <C-e> <C-W><C-V><C-W>l

map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>

noremap <C-s> <Nop>
noremap O <C-i>
noremap <leader>; <C-c>:Files<CR>

noremap K     {
noremap J     }
noremap H     ^
noremap L     $

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set number
set rnu
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

set tabstop=4 shiftwidth=4 expandtab
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

call plug#begin('~/.vim/plugged') 
Plug '~/workspace/indexer/vimprj' 
Plug '~/workspace/indexer/vim-dfutil' 
Plug '~/workspace/indexer/vim-indexer' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
call plug#end()
set laststatus=2
