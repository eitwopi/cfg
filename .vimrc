" Set indents by filetype
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Fuzzy search for files
cmap <C-o> vs **/*
" Show file options above the command line
set wildmenu
"" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*
"" Set the working directory to wherever the open file lives
"set autochdir
" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" Let's use the mouse
set mouse=a

" Basic display
set number
set hidden
set ruler

" Use the system clipboard
set clipboard^=unnamed

" Word search customisation
"set ignorecase
set incsearch
set hlsearch
nnoremap i :noh<cr>i

" Set text
set textwidth=79
set fo-=t "prevent unwanted auto wrapping
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END

"Put a status bar on all windows
set laststatus=2

" Set fold display
set foldenable
set foldmethod=indent
set foldcolumn=3
set foldlevel=100

" Ensure syntax highlighting is enabled and on
syntax enable
syntax on

" Split window conveniences
set splitbelow
set splitright

"" ALE fixing
"" note, check options on a file with :ALEFixSuggest
"let g:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'python': ['autopep8',
"\              'isort',
"\              'yapf',
"\              'add_blank_lines_for_python_control_statements'],
"\}
"" Bind F8 to fixing files using ALE
"nmap <F8> <Plug>(ale_fix)
"let g:ale_fix_on_save = 0
"
"" ALE autocomplete
"" Use autocomplete with <C-x><C-o>
"let g:ale_completion_enabled = 1
"set completeopt=menu,menuone,preview,noselect,noinsert
"
"" ALE find references
"nmap <F12> <Plug>(ale_find_references)

" MUST LEAVE THE FOLLOWING AT THE END OF VIMRC
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
