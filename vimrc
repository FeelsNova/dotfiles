" https://dougblack.io/words/a-good-vimrc.html

colorscheme badwolf         " awesome colorscheme
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB

set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight match

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

call pathogen#infect()                      " use pathogen

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup



map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
let g:slimux_select_from_current_window = 1

" vim wiki
set nocompatible
filetype plugin on
syntax on

augroup configgroup
    autocmd!
    autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 expandtab ai
    autocmd FileType txt setlocal shiftwidth=4 tabstop=4 expandtab ai
    autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab ai
    autocmd FileType html setlocal shiftwidth=4 tabstop=4 expandtab ai
    autocmd FileType scala setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType jade setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType sh setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType proto setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType text setlocal shiftwidth=2 tabstop=2 expandtab ai spell spelllang=en_ca
    autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType r setlocal shiftwidth=2 tabstop=2 expandtab ai
    autocmd FileType cmake setlocal shiftwidth=2 tabstop=2 expandtab ai
    au BufRead,BufNewFile *.conf setlocal shiftwidth=2 tabstop=2 expandtab autoindent
    autocmd FileType sql setlocal shiftwidth=2 tabstop=2 expandtab ai



augroup END
