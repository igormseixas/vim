"indentation
set autoindent
set smartindent
set copyindent
set preserveindent

"tabs
set noexpandtab
set tabstop=3
set shiftwidth=3

"background
set background=dark

"lines
set nu

"syntax
if has('filetype')
	filetype indent plugin on
endif

if has('syntax')
	syntax on
endif

if has('mouse')
	set mouse=a
endif

"error sounds
set visualbell
set t_vb=

"chage file format :set fileformat=unix
