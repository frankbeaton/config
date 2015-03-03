"""""""""""""""""""""""""""""
"""""" Frank's vimrc """"""""
"""""""""""""""""""""""""""""

"""""""""""
" PLUGINS "
"""""""""""

" autoload/pathogen.vim - package manager; autoloads any plugins in the bundle dir
" bundle/Align          - align assignment operators in v-selected block (=, =>, etc.)
" bundle/bufexplorer    - shows list of active buffers in vsplit
" bundle/ctrlp.vim      - <ctrl>+p to quick-open files by name (similar to Sublime's <cmd>+t)
" bundle/nerdtree       - super awesome file browser
" bundle/pdv            - php docblocker
" bundle/scratch.vim    - open a scratch buffer; doesn't prompt to save when closed
" bundle/tComment       - syntax-aware comment plugin
" bundle/tagbar         - nav map of classes, functions, variables, etc., in the current file
" bundle/vim-fugitive   - tons of git-related goodies (Gblame and Ggrep are the only ones I ever use)
" bundle/vmustache      - support for mustache.js templates (req'q by pdv)

" init Pathogen
execute pathogen#infect()


""""""""""""""""""""
" GENERAL UI STUFF "
""""""""""""""""""""

syntax on
set ls=2
set t_Co=256
set background=dark
set hidden
set nocompatible
set nobomb
set encoding=utf-8
set fileformat=unix
set number
set gcr=a:blinkon0
set cursorline
set statusline=%F\ %y\ %h%m%r\ %=%([%l,%v][%p%%]\ %)
set colorcolumn=81
set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set backspace=2
set scrolloff=5
set linebreak
set nofoldenable
set mouse=a
set list
set listchars=tab:→\|

" theme
colorscheme blackest_board

" set leader key to comma
let mapleader=","

" use OS clipboard as default register
set clipboard=unnamed

" highlight search results (black on green)
set hlsearch
hi Search cterm=reverse ctermbg=0 ctermfg=10 guibg=#00ff00 guifg=#000000

" set working directory to the current file
autocmd BufEnter * lcd %:p:h


""""""""""""""
" REMAPPINGS "
""""""""""""""

" spacebar = pagedown in Normal mode
nnoremap <SPACE> <PAGEDOWN>

" map semicolon to colon in Normal mode (colon still works as expected)
nnoremap ; :

" remap a (insert after cursor) to A (append to line), since I never use the former
nnoremap a A

" allow more word processor-like cursor movement in wrapped paragraphs
map j gj
map k gk

" shortcut for switching between panes in a split
map <leader>w :wincmd w<CR>

" shortcuts for navigating between tabs
map <leader>t :tabnext<CR>
map <leader>tp :tabprev<CR>

" run php linter on code in active window
map <leader>pl :!php -l %<CR>

" typewriter mode on/off
map <leader>tw :set scrolloff=99<CR>
map <leader>to :set scrolloff=5<CR>

" serialize/unserialize
map <leader>uns  :r!php -r "print_r(  unserialize(file_get_contents('%')));"<CR>
map <leader>ser  :r!php -r "print_r(  serialize(file_get_contents('%')));"<CR>

" change case of current word (uppercase/lowercase/title case)
map <leader>uc gUiw
map <leader>lc gui
map <leader>tc :s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g<CR> | let @/ = ""

" quote/unquote current word
map <leader>qq ciw"<C-r>""
map <leader>uq di"hPl2x

" quote v-selected string (,uq works on these, too)
map <leader>q c"<C-r>""

" show full path to current file
map <leader>f :echo expand('%:p')<CR>

""""""""""""""""""""""""""""""""""""
" CUSTOM COMMANDS, FUNCTIONS, ETC. "
""""""""""""""""""""""""""""""""""""

" use .md extension for markdown files (instead of .markdown)
au BufRead,BufNewFile *.md set filetype=markdown

" highlight trailing whitespace in red
highlight ExtraWhitespace ctermbg=red ctermfg=red guibg=#ff0000 guifg=#ff0000
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

" remove trailing whitespace (and clear hlsearch)
command! Killwhitey %s/\s\+$// | let @/ = ""

" get syntax definition for current word/symbol (useful for colorscheme tweaking)
command! WhatSyntax echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')

" persistent undo (vim remembers your changes even after you close the file)
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim_undo
	set undolevels=100
endif

"""""""""""""""""""""""""
" PLUGIN-SPECIFIC STUFF "
"""""""""""""""""""""""""

" NerdTree
let NERDTreeShowHidden=1
map <leader>nt :NERDTreeToggle<CR>

" Tagbar
let g:tagbar_autofocus = 1
map <leader>tb :Tagbar<CR>

" tComment: toggle line comment (normal mode only)
map <leader>c <c-_><c-_>

" Align
vmap <leader>aa :Align<space>=><CR>
vmap <leader>ae :Align<space>=<CR>
vmap <leader>ac :Align<space>,<CR>
vmap <leader>ap :Align<space>\|<CR>

" BufExplorer
nmap <silent> <leader>bx :BufExplorerVerticalSplit<CR>

" pdv: add php docblock
let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates"
map <leader>pd :call pdv#DocumentCurrentLine()<CR>
