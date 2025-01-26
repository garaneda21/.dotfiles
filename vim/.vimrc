set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


set smartindent

set scrolloff=8

set clipboard=unnamedplus

set number
set relativenumber

set background=dark

" Scroll con zz
:noremap <C-d> <C-d>zz
:noremap <C-u> <C-u>zz

" Activar Comprobación de Ortografía
map <F6> :setlocal spell! spelllang=en_us,es<CR>

" Compilar Archivos R Markdown
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
" Mapeo de bloque de código
autocmd Filetype rmd inoremap ``` ```{}<enter><enter>```<Esc>kkf}i
