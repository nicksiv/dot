filetype plugin indent on
set visualbell t_vb=
set background=dark
set autoread
syntax on
set syntax="markdown"
set autoindent
set hlsearch
nmap <C-UP> :m-2<CR>
nmap <C-DOWN> :m+1<CR>
set shellcmdflag=-ic
set nocompatible
set nonumber
set ignorecase
set formatoptions+=ro
set comments +=b:*
set ai
set com=b:*
set com +=b:**
set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
set t_Co=256

" set format to be always unix
set fileformat=unix
set fileformats=unix,dos
"set nobinary

"autocmd FileType markdown setlocal spell spelllang=en_gb

set linebreak
set shiftwidth=2
nnoremap <C-t><C-s> m'A<C-R>=strftime('%Y-%m-%d %H:%M')<CR>

"Fix backspace
set backspace=indent,eol,start

"Fix copy paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y


"toggle Explore
:map <F2> :Lexplore<CR>

:map <F7> :set spell!<CR>


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
"UNUSED PLUGINS
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'rwxrob/vim-pandoc-syntax-simple'
"Plug 'https://github.com/vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'https://github.com/sukima/vim-tiddlywiki'
call plug#end()

set foldmethod=manual
set nofoldenable

au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc set tw=0
"let g:pandoc#spell#enabled = 0
"let g:pandoc#syntax#conceal#urls = 1
colorscheme dracula
let g:airline_theme='dracula'

" User directory for notes
 cd ~/
set path+=~/Documents/**

"VIMWIKI Stuff
"let g:vimwiki_list = [{'path': '~/org/zk/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_global_ext = 1
"augroup pandoc_syntax
"    autocmd! FileType vimwiki set syntax=markdown.pandoc
"  augroup END
":nmap <Leader>dp <Plug>VimwikiDiaryPrevDay
":nmap <Leader>dn <Plug>VimwikiDiaryNextDay

setlocal suffixesadd+=.md
set wildmenu
set wildmode=longest:full,full

autocmd FileType markdown set cursorline
autocmd FileType markdown set conceallevel=2

let g:netrw_browsex_viewer="xdg-open"
:map <F12> :e ~/.vimrc <CR>G

