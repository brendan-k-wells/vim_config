syntax on


" Mouse stuff
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set mouse=nicr


" Python stuff

if !exists("autocommands_loaded")
  let autocommands_loaded = 1
    autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
    endif

    " This beauty remembers where you were the last time you edited the file, and returns to the same position.
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    

" Format xml files correctly
" au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Mappings from https://statico.github.io/vim.html

:nmap j gj
:nmap k gk

:set incsearch
:set ignorecase
":set smartsearch
:set hlsearch
:nmap \q :nohlsearch<CR>
