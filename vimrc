"The most awesome VIM settings by abner@jasper-da.com
execute pathogen#infect()
set tabpagemax=100

"Activate line numbers
set number

"Allows middleclick to copy
set mouse=a
set noswapfile
set nocompatible
set bs=2 

"Turn off word wrapping
"set wrap!

"Turn on smart indent
set smartindent
set tabstop=2 "set tab character to 4 characters
set expandtab "turn tabs into whitespace
set shiftwidth=2 "indent width for autoindent
set softtabstop=2 "back space will erase tabsize
filetype indent on "indent depends on filetype

"Shortcut to auto indent entire file
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga"Allows middleclick to copy

"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

set autochdir
syntax enable
filetype plugin indent on
highlight LineNr ctermfg=blue
au BufNewFile,BufRead *.sv set filetype=verilog
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

"Enable indent folding
set nofoldenable
"set fdm=indent

"Set space to toggle a fold 
nnoremap <space> za 

"Hide buffer when not in window (to prevent relogin with FTP edit)
set bufhidden=hide

"Have 5 lines of offset (or buffer) when scrolling
set scrolloff=5

"Prevents keeping of backup after overwriting the file
set nobk

"Autocomplete parenthesis, brackets and braces
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"Share windows clipboard
set clipboard=unnamed

"Hightlight the current line
set cursorline
if exists('+colorcolumn')
      set colorcolumn=500
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%121v./
endif

"""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c

function! HasPaste()
   if &paste
       return 'PASTE MODE  '
   else
       return ''
   endif
endfunction


"Some further crap
set ruler
set backspace=eol,start,indent
set hlsearch
set incsearch
set showmatch
set mat=2

"Removing trailing whitespace 
func! DeleteTrailingWS() 
   exe "normal mz" 
   %s/\s\+$//ge 
   exe "normal z" 
endfunc 
autocmd BufWrite *.py :call DeleteTrailingWS() 
            
set guitablabel=%t

""set background=light
"Force gnome-terminal to work with 256 colors
""set t_Co=256
"colorscheme desert

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
