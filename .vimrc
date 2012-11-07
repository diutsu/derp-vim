" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()


filetype plugin indent on
set nocompatible
set mouse=a

" INDENT STUFF
set autoindent
set smartindent

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" jumping between brackets and stuff
set showmatch

" highly obnoxius visual bell
set vb

" SEARCHES 
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set gdefault " lazyness to type the g in s/foo/bar/g
set laststatus=2
"done with highligh, move on"
nnoremap <leader><space> :noh<cr> 

" Scroll ahead
set scrolloff=4
set sidescrolloff=5
set sidescroll=1

"too long line
set wrap
set textwidth=79
set formatoptions=qrn1
if exists('+colorcolumn')
    set colorcolumn=85
endif

" EXTRA COOL STUFF 
set showtabline=2 " always show tab bar
set cul "hightlight current line"
set wildmenu  "autocomplete menu"
set wildmode=list:longest,full "autocomplete text"
set title " show document title on window
set ruler " show line and char pos
set showmode "show current mode"
set showcmd "show commands inserted"

" Show me the line numbers relative to actual
if exists('+relativenumber')
    set relativenumber
    au FocusLost * :set number
    au FocusGained * :set relativenumber
endif

set autochdir "change to current directory"

" show invisible chars? show invisible chars
"set list
"set listchars=tab:▸\ ,eol:¬

" I WANT TO USE ARROWS, problem?
nnoremap <up> gk
nnoremap <down> gj

" nice moving around
nnoremap j gj
nnoremap k gk

" not my style, but have no use for F1 anyway
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" COLOR SECTION "
" no color, no joy
syntax on
" default color
set t_Co=256
colorscheme molokai

if has("gui_running")
    set background=dark
    colorscheme solarized
endif

" UNDO FILE "
"set undofile
"set directory^=$HOME/.vim/tmp/
"set undodir=$HOME.vim/tmp/
"antecipate scroll


" now set it up to change the status line based on mode
"if version >= 700
"    au InsertEnter * hi StatusLine ctermbg=black ctermfg=green
"    au InsertLeave * hi StatusLine ctermbg=white ctermfg=black
"endif

hi LineNr ctermfg=Darkgrey

"highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"highlight OnLength ctermbg=yellow ctermfg=black
"match OnLength /\%80v./

" FONTS, SHELL,"
set gfn=DejaVu\ Sans\ Mono\ 10
set shell=/bin/bash


" some auto expand text
ab imavc int main(int argc, char**argv) {<CR><CR>return 0;<CR>}<UP><TAB>
ab psvm public static void main(String[] args) {<CR><CR>}<UP><TAB>
ab javanewf /**<CR> *<CR>*/<CR><BACKSPACE>{<CR><CR>}<UP><UP><UP><UP><RIGHT>																		
