" Pathogen
execute pathogen#infect()


" Mapleader
:let mapleader = ','

"Syntax
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

" Make up and down mappings based on screen line
:nmap j gj
:nmap k gk

" Make search better
:set incsearch
:set ignorecase
":set smartsearch
:set hlsearch
:nmap \q :nohlsearch<CR>

" Go back to previous file
:nmap <C-e> :e#<CR>

" Cycle through buffers
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

" Find buffer
:nmap ; :CtrlPBuffer<CR>

:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" Tree
:nmap \e :NERDTreeToggle<CR>

