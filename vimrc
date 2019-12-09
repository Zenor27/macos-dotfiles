
"Add pathogen tpope plugin manager
execute pathogen#infect()

"Makefile rule
autocmd fileType make setlocal noexpandtab

"Set encoding
set encoding=utf-8 fileencodings=

"Syntax coloration
syntax on

"Print lines number
:set relativenumber
:set norelativenumber " turn relative line numbers off
:set relativenumber!  " toggle relative line numbers


"Show match between brackets etc.
set showmatch

"Keep indent for line return
set autoindent

"Set number of space for tab
set shiftwidth=4
set sts=4
set expandtab
set smarttab

"reacts to the syntax/style of the code you are editing 
set smartindent


"Set theme
"colorscheme hybrid

"Activate mouse using
set cursorline
set mouse=a

"Enable function folding
set foldenable
set foldmethod=syntax
set foldcolumn=4
set foldlevel=999


"Enable parenthesis color matching
let g:rainbow_active = 1


"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Map syntastic close tab
:nnoremap <C-p> :SyntasticToggleMode<CR>
:nnoremap <C-l> :lclose<CR>

"Map autoindent
:nnoremap <C-i> gg=G''<CR>

:nnoremap <S-tab> gt

"LightLine settings"
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"Whitespace show"
set list listchars=trail:.
"Hightlight search
set hls is

let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise


set backspace=indent,eol,start

