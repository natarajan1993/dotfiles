set number relativenumber
set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2
set encoding=utf-8
"let g:Powerline_symbols = 'fancy'
set guifont=Source\ Code\ Pro\ for\ Powerline
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces

set expandtab

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'frazrepo/vim-rainbow'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'itchyny/lightline.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-surround'
Plugin 'matze/vim-move'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
			
syntax on
autocmd vimenter * NERDTree
map <C-S-e> :NERDTreeToggle<CR> " Toggle Nerd Tree plugin
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Close vim if the only window left open is a NERDTree
filetype plugin on "Initialize vim commenter
let g:rainbow_active = 1 "Initialize vim rainbow
set backspace=indent,eol,start "Make backspace delete pasted text,etc.

"#Better tab experience - from https://webdevetc.com/
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr> "leader key is the \ key
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr> " C stands for Ctrl so C-t is Ctrl+t
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

inoremap <C-w> <C-\><C-o>dB " Delete word with ctrl+backspace
inoremap <C-BS> <C-\><C-o>db
" Use this block below otherwise alt does not work
" https://github.com/matze/vim-move/issues/8
"let c='a'
"while c <= 'z'
    "exec 'set <A-'.c.">=\e".c
        "exec 'imap \e'.c." <A-".c.">"
          "let c = nr2char(1+char2nr(c))
      "endw

      "set timeout ttimeoutlen=10
" For moving lines (^] is a special character; use <M-k> and <M-j> if it
" works)

"nnoremap <C-S-k> mz:m-2<CR>`z==
"inoremap <C-S-j> <Esc>:m+<CR>==gi
"vnoremap <C-S-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
"inoremap <C-S-k> <Esc>:m-2<CR>==gi
"nnoremap <C-S-j> mz:m+<CR>`z==
"vnoremap <C-S-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
