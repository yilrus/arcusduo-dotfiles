" Centers cursor vertically.
set so=999
set relativenumber
" changes to hybrid number mode
set number
noremap <F1> :setlocal number!<cr>
noremap <F2> :setlocal relativenumber!<cr>
" this disables relative when focus is not on buffer. and switches to number only in insert mode
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" Disables retarded os defaults
set nocompatible

" Yay this isn't a shitty editor any more
filetype indent plugin on
syntax on

set wildmenu
set showcmd
set ignorecase
set smartcase
set autoindent
set backspace=indent,eol,start
"set nostartofline
set ruler
" Disabled because it doesn't work with Powerline. If not using powerline, turn on and make sure to use laststatus=2 as well
"set cmdheight=2
set laststatus=2
set confirm
set mouse=a
set shiftwidth=4
set softtabstop=4
set expandtab


"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
" Runs pathogen, plugin manager. Puts things in .vim/bundle
execute pathogen#infect() 
"fixes something to do with sessions and pathogen
set sessionoptions-=options 
" These make j and k behave normally when moving through wrapped lines.
nmap j gj
nmap k gk
" case insensitive unless upper case included
set ignorecase
set smartcase

