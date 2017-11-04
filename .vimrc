" Status Bar
"set statusline=%F%m%r%h%w\%=[FMT=%{&ff}]\ [%03l,%03v]\ (%p%%)
set statusline=%F%m%r%h%w\%=[%03l,%03v]\ (%p%%)
set laststatus=2

" Indent
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" Search
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" View
set hlsearch
set incsearch
nnoremap <F3> :<C-u>setlocal relativenumber!<CR>

" Other
inoremap {<ENTER>>  {}<Left}<CR><ESC><S-o>
inoremap [<ENTER>>  {}<Left]<CR><ESC><S-o>
inoremap (<ENTER>>  {}<Left)<CR><ESC><S-o>

autocmd BufWritePre * :%s/\s\+$//ge
autocmd QuickFixCmdPost *grep* botright cwindow

cabbr w!! w !sudo tee > /dev/null %
