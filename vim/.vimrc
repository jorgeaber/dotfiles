
" -------------------------------------------------------

set nocompatible 	
set ttyfast 		
set noerrorbells 	
set novisualbell 	
set helplang=en 	
set history=50 		
set autochdir 		
set clipboard=unnamedplus 


" -------------------------------------------------------
" Tmux compatibility

if &term =~ '^screen'
    execute "set <PageUp>=\e^[[6~"
    execute "set <PageDown>=\e^[[5~"
    execute "set <F5>=\e[15;*~"
endif
map <Esc>[B <Down>
nnoremap <PageUp> gT
nnoremap <PageDown> gt


" -------------------------------------------------------
" Key mappings

imap jj <Esc>
noremap cp :CtrlP<CR>
noremap <CR> i<CR><Esc>
noremap <space> i<space><Esc>
noremap O kA<CR><Esc>
noremap o A<CR><Esc>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>


" -------------------------------------------------------
" Visualization

syntax on
map text :syntax off<CR>:set wrap<CR>
map code :syntax on<CR>:set nowrap<CR>
set background=dark
let g:solarized_bold=0
let g:hybrid_use_Xresources = 1
set term=screen-256color
colorscheme solarized
hi CursorLine cterm=NONE ctermbg=234
set cursorline   

" -------------------------------------------------------
" Whitespaces and tabs

set nowrap		" Las líneas anchas no se ven enteras
set tabstop=4		" Mantiene para tabstop su valor por defecto
set softtabstop=4 	" Los espacios en blanco a insertar cada vez que se pulse la tecla TAB.
set shiftwidth=4 	" Tamaño para sangrado con los comandos <, >
set expandtab		" El tabulador no inserta verdaderas tabulaciones sino espacios en blanco
set autoindent		" Respetar automáticamente el sangrado de la línea precedente
set backspace=2		" Funcionamiento de la tecla retro
set smartindent
set nocindent


" -------------------------------------------------------
" Search

nnoremap  <F5> :set hlsearch!<CR>	" Iluminar todas las apariciones buscadas
set ignorecase smartcase 	" Ignorar mayúsculas usan mayúsculas en
set incsearch 			" Búsqueda incremental.
hi Search ctermbg=LightBlue cterm=NONE 


" -------------------------------------------------------
" CtrlP

let g:ctrlp_custom_ignore = {
    \'dir': '\.git$\|node_modules$'
    \}


" -------------------------------------------------------
" Vundle

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required
