" Indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" hilight
z
set hlsearch
"set t_Co=256
"set cursorline
"highlight CursorLine cterm=None ctermbg=

" search
set incsearch
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

" others
syntax on
set showmatch
set laststatus=2
set statusline+=[%l/%L]

nnoremap <F3> :<C-u>setlocal relativenumber!<CR>