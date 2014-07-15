" Vim color file blackest_board
"
" handy cterm colors guide: http://pln.jonas.me/xterm-colors

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
set t_Co=256
let colors_name = "blackest_board"

" KEY
" darkgray=248,234 (bg)
" gold=220
" green=77
" lightblue=110
" lightgray=245,252
" orange=202
" white=231
" yellow=191

hi ColorColumn	  guifg=#ffffff    ctermfg=231  guibg=#404040 ctermbg=237    gui=NONE    cterm=NONE
hi Comment	      guifg=#a8a8a8    ctermfg=248  gui=NONE      cterm=NONE
hi Constant	      guifg=#FF6400    ctermfg=202  gui=NONE      cterm=NONE
hi Cursor	        guibg=#eeeeee    ctermbg=255  guifg=#6c6c6c ctermfg=242    gui=NONE    cterm=NONE
hi CursorLine	    guifg=NONE       ctermfg=NONE guibg=#404040 ctermbg=237    gui=NONE    cterm=NONE
hi Delimiter	    guifg=#ffffff    ctermfg=231  gui=NONE      cterm=NONE
hi Directory	    guifg=#8DA6CE    ctermfg=110  gui=NONE      cterm=NONE
hi Folded	        guibg=#555555    ctermbg=239  guifg=#FBDE2D ctermfg=220    gui=NONE    cterm=NONE
hi Function	      guifg=#8DA6CE    ctermfg=110  gui=NONE      cterm=NONE
hi Identifier	    guifg=#ffffff    ctermfg=231  gui=NONE      cterm=NONE
hi LineNr	        guifg=#8a8a8a    ctermfg=245  guibg=#1f2529 ctermbg=NONE   gui=NONE    cterm=NONE
hi MatchParen	    guifg=#ccffcc    ctermfg=252  guibg=#FF6400 ctermbg=202    gui=NONE    cterm=NONE
hi NonText	      guibg=#080808    ctermbg=232  guifg=#81bed6 ctermfg=245    gui=NONE    cterm=NONE
hi Normal	        guifg=#f0f0f0    ctermfg=255  guibg=#1f2529 ctermbg=234    gui=NONE    cterm=NONE
hi Number	        guifg=#d7ff5f    ctermfg=191  gui=NONE      cterm=NONE
hi PreProc	      guifg=#8DA6CE    ctermfg=110  gui=NONE      cterm=NONE
hi Search         guifg=#000000    ctermfg=0    guibg=#FF6400 ctermbg=77     gui=NONE    cterm=NONE
hi Special	      guifg=#FBDE2D    ctermfg=220  gui=NONE      cterm=NONE
hi SpecialKey	    guifg=#9acd32    ctermfg=9    gui=NONE      cterm=NONE
hi Statement	    guifg=#FBDE2D    ctermfg=220  gui=NONE      cterm=NONE
hi StatusLine	    guibg=#c2bfa5    ctermbg=232  guifg=#FF6400 ctermfg=202    gui=NONE    cterm=NONE
hi StatusLineNC	  guibg=#c2bfa5    ctermbg=237  guifg=#777777 ctermfg=245    gui=NONE    cterm=NONE
hi StorageClass	  guifg=#FBDE2D    ctermfg=220  gui=NONE      cterm=NONE
hi String	        guifg=#0cff14    ctermfg=77   gui=NONE      cterm=NONE
hi Title	        guifg=#cd5c5c    ctermfg=252  gui=bold      cterm=bold
hi Todo	          guifg=#FF6400    ctermfg=202  ctermbg=NONE  gui=NONE       cterm=bold
hi Type	          guifg=#8DA6CE    ctermfg=110  gui=NONE      cterm=NONE
hi Underlined	    guifg=#80a0ff    ctermfg=89   gui=underline cterm=underline
hi VertSplit	    guibg=#c2bfa5    ctermbg=237  guifg=#777777 ctermfg=245    gui=NONE    cterm=NONE
hi Visual	        guifg=#f0e68c    ctermfg=255  guibg=#6b8e23 ctermbg=51     gui=NONE    cterm=NONE

" php
hi phpBoolean	        guifg=#FF6400    ctermfg=202  gui=NONE    cterm=NONE
hi phpClass	          guifg=#FF6400    ctermfg=202  gui=NONE    cterm=NONE
hi phpClassExtends	  guifg=#FF6400    ctermfg=202  gui=NONE    cterm=NONE
hi phpDefine	        guifg=#FBDE2D    ctermfg=220  gui=NONE    cterm=NONE
hi phpFunction	      guifg=#FF6400    ctermfg=202  gui=NONE    cterm=NONE
hi phpKeyword	        guifg=#FBDE2D    ctermfg=220  gui=NONE    cterm=NONE
hi phpMemberSelector	guifg=#FBDE2D    ctermfg=220  gui=NONE    cterm=NONE
hi phpNumber	        guifg=#D8FA3C    ctermfg=191  gui=NONE    cterm=NONE
hi phpParent	        guifg=#ffffff    ctermfg=231  gui=NONE    cterm=NONE
hi phpRegion	        guifg=#ffffff    ctermfg=231  gui=NONE    cterm=NONE
hi phpSpecialFunction guifg=#8DA6CE    ctermfg=110  gui=NONE    cterm=NONE
hi phpStorageClass	  guifg=#8DA6CE    ctermfg=24   gui=NONE    cterm=NONE
hi phpStructure	      guifg=#FBDE2D    ctermfg=220  gui=NONE    cterm=NONE
hi phpType	          guifg=#FBDE2D    ctermfg=220  gui=NONE    cterm=NONE
hi phpVarSelector	    guifg=#ffffff    ctermfg=231  gui=NONE    cterm=NONE

" sh
hi shCommandSub	    guifg=#D8FA3C    ctermfg=191    gui=NONE    cterm=NONE
hi shDerefSimple	  guifg=#8DA6CE    ctermfg=110    gui=NONE    cterm=NONE
hi shOption	        guifg=#FF6400    ctermfg=202    gui=NONE    cterm=NONE
hi shSetOption	    guifg=#FF6400    ctermfg=202    gui=NONE    cterm=NONE
hi shStatement	    guifg=#FBDE2D    ctermfg=220    gui=NONE    cterm=NONE
hi shVariable	      guifg=#8DA6CE    ctermfg=110    gui=NONE    cterm=NONE

" markdown
hi markdownBold	  guifg=#FBDE2D    ctermfg=220    gui=bold      cterm=bold
hi markdownItalic	guifg=#D8FA3C    ctermfg=191    gui=bold      cterm=bold

" nerdtree
hi NERDTreeCWD	    guifg=#FBDE2D    ctermfg=220    gui=NONE    cterm=NONE

" tagbar
hi TagbarKind	      guifg=#8DA6CE    ctermfg=110    gui=NONE    cterm=NONE
