filetype on
filetype plugin on

set bs=2
set cindent
set history=50
set nomodeline
set nowrap
set number
set runtimepath=~/.vim,$VIMRUNTIME
set title
set wildmenu

" Highlight search keywords.
set hlsearch
set incsearch

" Replace tab with 4 spaces.
set expandtab
set shiftwidth=4
set softtabstop=4

" Auto-complete using Ctrl+K.
set dictionary-=~/.vim/funclist.txt
set complete-=k complete+=k

" Syntax highlight.
syntax on
hi Comment term=standout cterm=bold ctermfg=0
highlight Search term=reverse ctermbg=3 ctermfg=0
highlight Normal ctermbg=black ctermfg=white
highlight Folded ctermbg=black ctermfg=darkcyan
hi Cursor ctermbg=Gray ctermfg=Blue
highlight clear SpellBad
highlight SpellBad term=underline cterm=underline ctermfg=red

" Set status line.
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

" Set cursor line.
set cursorline
highlight CursorLine cterm=none ctermbg=4
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Always use utf-8 encoding.
set fileencoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8

" Set foldering.
set foldmethod=syntax
set foldnestmax=3
set foldcolumn=1

" Set tab settings.
highlight TabLine ctermbg=blue
highlight TabLineFill ctermbg=green
highlight TabLineSel ctermbg=red

" Set F1-F12 shortcut keys.
nnoremap <silent> <F1> :NERDTree<CR>
map <silent> <F2> :TagbarToggle<CR>
map <F3> oecho "<pre>";print_r($);exit;<Esc>F$a
map <silent> <F4> :TlistToggle<CR>
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>

" Activate pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Activate scss.vim
au BufRead,BufNewFile *.scss set filetype=scss
" Removing tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
" Replace tab to spaces.
au BufWrite * :retab
" Set auto commands.
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
" Make vim setting works immediately.
autocmd! BufWritePost .vimrc source %
" Output CSS files once *.scss saves.
autocmd BufWritePost *.scss !compass_lite <afile> <afile>:r.css

" Create a template file.
autocmd BufNewFile *.html so ~/.vim/html.txt
autocmd BufNewFile *.html exe "1," . 10 . "g/name=\"created\" content=\".*\"/s//name=\"created\" content=\"" .strftime("%Y-%m-%d"). "\""
autocmd BufWritePre,FileWritePre *.html exe "1," . 10 . "g/name=\"modified\" content=\".*\"/s//name=\"modified\" content=\"" .strftime("%c"). "\""

" TagList plugin.
let Tlist_Auto_Open = 0
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

" Tagbar plugin.
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

" PHP Documentation plugin.
inoremap <C-K> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>
