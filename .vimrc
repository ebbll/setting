syntax on

set nocindent
set noautoindent
set nosmartindent
set ts=4
set sts=0
set sw=4
set noexpandtab

set number
set ruler									" 현재 커서 위치 표시
set hlsearch								" 검색어 강조
set ignorecase								" 검색시 대소문자 무시
set nobackup
set title
set showmatch
set nowrap
set wmnu

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 							"status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

call plug#begin('~/.vim/plugged')
    Plug 'pbondoer/vim-42header'			"42 header
	Plug 'tpope/vim-fugitive' 				"use git things in vim
	Plug 'tpope/vim-sensible' 				"required
	Plug 'preservim/nerdtree'				"filetree
	Plug 'dense-analysis/ale'				"syntax check
	Plug 'preservim/nerdcommenter'			"comment
	Plug 'nathanaelkane/vim-indent-guides'	"highlight indent lines
	"Plug 'Yggdroot/indentLine'				"highlight indent lines
	Plug 'vim-airline/vim-airline'			"fancy status bar
	Plug 'airblade/vim-gitgutter'			"see code changes
	"Plug 'nanotech/jellybeans.vim'			"color theme
	"Plug 'junegunn/fzf.vim'				"file manager
	Plug 'ctrlpvim/ctrlp.vim'				"file manager
	Plug 'terryma/vim-multiple-cursors'		"multiple selection
	Plug 'Raimondi/delimitMate'				"auto bracket
	Plug 'terryma/vim-smooth-scroll'		"smooth scroll
	"Plug 'zxqfl/tabnine-vim'				"auto complete
	Plug 'tpope/vim-surround'				"smart quotes
	Plug 'easymotion/vim-easymotion'		"easy to deal with words
	Plug 'edkolev/promptline.vim'			"shell inside VIM
	Plug 'xuhdev/SingleCompile'				"simple compiler
	Plug 'pangloss/vim-simplefold'			"fold codes
	Plug 'vim-scripts/WhiteWash'			"highlights white spaces 
call plug#end()

nmap <f1> :Stdheader<CR>
nmap <F9> :SCCompile<CR>
nmap <F10> :SCCompileRun<CR>


let g:hdr42user = 'eunlee'
let g:hdr42mail = 'eunlee@student.42seoul.kr'
