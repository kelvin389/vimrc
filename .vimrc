" clear space remaps
nnoremap <space> <nop>
" set leader to space
let mapleader=" "

" map jk to exit insert mode
inoremap jk <Esc>
"map shift-j and shift-k to scroll half a screen
noremap <s-j> <c-d>
noremap <s-k> <c-u>

" <space><space> to search
nnoremap <leader><leader> /
" clear search when hitting return (enter) in normal mode
nnoremap <cr> :noh<cr>

" <space>p to paste from os clipboard
noremap <leader>p "+p
" <space>y to yank to os clipboard
noremap <leader>y "+y

" H to go to first non whitespace character
noremap H ^
" L to go to last non whitespace character
noremap C g_

" map ctrl+backspace to delete the previous word (like on windows)
inoremap <c-bs> <c-w>

" syntax highlighting
syntax on

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert
" mode.  This is a list of items, separated by commas.  Each item allows
" a way to backspace over something:
set backspace=2

" default color scheme (overwritten at bottom of script if using gui)
colorscheme peachpuff
highlight Comment ctermfg=Green

" set tab size to 4 spaces
set tabstop=4
set shiftwidth=4 

" spaces instead of tabs
set expandtab

" auto indent
set ai

" highlight search
set hlsearch

" ignore case when searching
set ignorecase

" search as input comes in
set incsearch

" show ruler in bottom right
set ruler

" set scroll off
set so=5

" disable error sounds
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" hybrid numbers in buffer mode
" (absolute on current line, relative otherwise),
" absolute in insert mode
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" commands for gui vim
if has("gui_running")

    " change font to 12pt consolas
    set guifont=Consolas:h12:cANSI

    " try overwriting color scheme
    try
        colorscheme seoul256 
        let g:seoul256_background=234
        colo seoul256
    endtry

    " set window size default
    set lines=28
    set columns=98
endif
