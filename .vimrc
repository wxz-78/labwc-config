" ~/.vimrc - Paleta Pastel Desaturada (Rosa / Amarillo / Café)

" ------------------------------------------------------------------------------
" OPCIONES BÁSICAS Y COLOR
" ------------------------------------------------------------------------------
syntax on                   " Habilita resaltado de sintaxis
set termguicolors           " Soporte de color RGB de 24 bits
set background=dark         " Base oscura para tonos suaves
set number                  " Números de línea
set relativenumber          " Números relativos para saltos rápidos
set cursorline              " Resalta la línea actual
set mouse=a                 " Soporte de ratón opcional

" ------------------------------------------------------------------------------
" PALETA DE COLORES PERSONALIZADA (DESATURADA)
" ------------------------------------------------------------------------------
" Fondo: Café oscuro mate / Texto general: Crema
highlight Normal          guifg=#FAF5F8 guibg=#211C1E
highlight NonText         guifg=#4A3E44 guibg=#211C1E

" Línea de cursor y números de línea
highlight CursorLine      guibg=#2B2427
highlight CursorLineNr    guifg=#F0A7B8 gui=bold
highlight LineNr          guifg=#5E4F56

" Elementos de Sintaxis (Desaturados y suaves)
highlight Comment         guifg=#8C7B83 gui=italic   " Café topo / grisáceo
highlight String          guifg=#EBC547              " Amarillo mate suave
highlight Constant        guifg=#E0B083              " Café claro / Ámbar apagado
highlight Identifier      guifg=#FAF5F8              " Crema claro
highlight Function        guifg=#F0A7B8              " Rosa pastel
highlight Statement       guifg=#F0A7B8 gui=none     " Rosa pastel
highlight PreProc         guifg=#E0B083              " Ámbar suave
highlight Type            guifg=#EBC547 gui=none     " Amarillo mate
highlight Special         guifg=#D8A8B8              " Rosa palo desaturado

" Búsqueda y Selección
highlight Search          guifg=#211C1E guibg=#EBC547
highlight Visual          guifg=NONE    guibg=#382F33

" ------------------------------------------------------------------------------
" TABULACIÓN Y SANGRADO
" ------------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" ------------------------------------------------------------------------------
" BÚSQUEDA Y PORTAPAPELES
" ------------------------------------------------------------------------------
set ignorecase
set smartcase
set hlsearch
set incsearch
set clipboard=unnamedplus
set noswapfile
set undofile

" ------------------------------------------------------------------------------
" ATAJOS
" ------------------------------------------------------------------------------
let mapleader = " "
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Integración explícita con wl-clipboard en Wayland
if has('nvim') && executable('wl-copy')
  let g:clipboard = {
    \   'name': 'wl-clipboard',
    \   'copy': {
    \      '+': 'wl-copy --type text/plain',
    \      '*': 'wl-copy --type text/plain',
    \    },
    \   'paste': {
    \      '+': 'wl-paste --no-newline',
    \      '*': 'wl-paste --no-newline',
    \    },
    \   'cache_enabled': 1,
    \ }
endif
