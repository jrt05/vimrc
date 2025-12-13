"Jasons vimrc file.  All of these settings can
"be changed.  Usually turning it off means
"putting a no in front of the word.

" Set our leader keys
let mapleader = ' '
let maplocalleader = "\\"

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Sets no compatibility mode with vi
set nocompatible

" Needed for VimWiki
filetype plugin on

" Turns color on
syntax on

" Map tab functionality
:map <F8> :tabn<CR>
:map <F7> :tabp<CR>
" New tab (Tab & Explore)
:map <F2> :Tex<CR>
" Split vertically (Vertical Split & Explore)
:map <F3> :Vex<CR>
" Split horizontally (Split & Explore)
:map <F4> :Sex<CR>
" Terminal shortcut
:map <Leader>tt :term<CR>

" Turns off auto indent and smart indent
" set noautoindent
" set nosmartindent

" Set syntax highlighting asm to nasm
au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.inc set filetype=nasm
au BufRead,BufNewFile *.lst set filetype=nasm
au BufRead,BufNewFile *.go set filetype=go

" Turns off auto indent for programming
" set nocindent
" filetype indent off

" Sets Tabs to 4 actual spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

" Set spellcheck to be on
" set spell spelllang=en_us

" Allows right click pasting
:set mouse-=a

" Set to prevent trojaned text files.
set nomodeline

" Turns off autobackup, You have one chance
set nobackup

" Sets incremental search on
set incsearch

" Turns highlight search off
set nohls

" Set line numbers to on
set number
set relativenumber

" Set the current line
set cursorline

set termguicolors

" Set word wrap off
" set nowrap

" Allows pasting without formatting
" set paste

" Disable swap file
" set noswapfile

" Turns the ruler on, must be after paste, or will not work.
set ruler

" sets color scheme
":colorscheme torte      " Very nice classic scheme
":colorscheme koehler    " I've run this for years. A classic for me. would like more grey in background
:colorscheme lunaperche " I like this one a lot
":colorscheme pablo      " I like this one as well
":colorscheme elflord    " Not terrible, it is a very green vibrant color scheme
":colorscheme industry   " classic color scheme
":colorscheme darkblue   " I don't hate this one, text is grey though, looks like comments
":colorscheme sorbet     " Not terrible, maybe a bit too colorful

" Set different highlite after column 80
" hi ColorColumn guibg=#2c2d27 ctermbg=235
" let &colorcolumn=join(range(81,81),",")

" Set up VimWiki parameters
"  syntax means use markdown
"  ext means use .md extension
"  auto_diary_index means automatically add diary files to the index
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md', 'auto_diary_index': 1}]

" Italicize comments
highlight Comment cterm=italic







