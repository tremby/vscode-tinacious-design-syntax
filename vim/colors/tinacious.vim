" Vim color file
" Port of https://github.com/tinacious/vscode-tinacious-design-syntax
" Maintainer: Bart Nagel <bart@tremby.net>
" Last Change: TODO
" URL: TODO

" Main colours
" Pink: #ff3399 / LightRed
" Blue: #00bfff / LightBlue
" Turquoise: #00ced1 / DarkCyan
" Green: #00d364 / LightGreen
" Purple: #cc66ff / LightMagenta
" Orange: #ffcc66 / Yellow

if exists("syntax_on")
	syntax reset
endif
let g:colors_name="tinacious"

highlight clear Normal
highlight clear

if &background == "light"

	" Light version
	" =============

	highlight Normal guifg=#44425e guibg=#f8f8ff

else

	" Dark version
	" ============

	highlight Normal guifg=#b3b3d4 guibg=#1d1d26 ctermfg=Gray ctermbg=Black

	" Basics; see :he group-name
	" --------------------------

	highlight Comment guifg=#686889 ctermfg=DarkGray
	highlight Constant guifg=#cc66ff ctermfg=LightMagenta
	highlight String guifg=#ffcc66 ctermfg=Yellow
	highlight Character guifg=#ffcc66 ctermfg=Yellow
	highlight Identifier guifg=#00d364 ctermfg=LightGreen
	highlight Function guifg=#00d364 ctermfg=LightGreen
	highlight Statement guifg=#ff3399 gui=bold term=bold ctermfg=LightRed cterm=bold
	highlight PreProc guifg=#00ced1 ctermfg=DarkCyan
	highlight Type guifg=#00bfff gui=italic term=italic ctermfg=LightBlue cterm=italic
	highlight StorageClass guifg=#00bfff gui=bold,italic term=bold,italic ctermfg=LightBlue cterm=bold,italic
	highlight Special guifg=#00bfff gui=bold,italic term=bold,italic ctermfg=LightBlue cterm=bold,italic
	highlight Underlined guifg=#00bfff ctermfg=LightBlue
	highlight Error guifg=#f8f8f0 guibg=#ff3399 ctermbg=LightRed
	highlight Todo guifg=#1d1d26 guibg=#ffcc66 ctermbg=Yellow

	" UI; see :he highlight-groups
	" ----------------------------

	highlight CursorLine guibg=#3d3d56 term=NONE ctermbg=Gray cterm=NONE
	highlight CursorLineNr guifg=#ffcc66 ctermfg=Yellow
	highlight DiffAdd guibg=#0f534c ctermbg=DarkGreen " This is #057867 at 97/ff opacity on #1d1d26 bg
	highlight DiffChange guibg=#2c2c3e ctermbg=DarkMagenta
	highlight DiffDelete guibg=#9d224a guifg=NONE ctermbg=DarkRed " This is #b12350 at dd/ff opacity on #1d1d26 bg
	highlight DiffText guibg=#3b3f51 ctermbg=LightMagenta
	highlight Directory guifg=#00d364 ctermfg=LightGreen
	highlight ErrorMsg guifg=#ffffff guibg=#ff3399 ctermfg=White ctermbg=LightRed
	highlight FoldColumn guifg=#b3b3d4 guibg=#2c2c3e
	highlight Folded guifg=#b3b3d4 guibg=#2c2c3e
	highlight LineNr guifg=#636377 ctermfg=DarkGray " This is #b3b3d4 at 77/ff opacity on #1d1d26 bg
	highlight MatchParen guifg=#1d1d26 guibg=#00ced1 gui=bold term=bold ctermbg=DarkCyan cterm=bold
	highlight NonText guifg=#2d2d3c ctermfg=DarkGray
	highlight Pmenu guibg=#2c2c3e ctermfg=Gray ctermbg=DarkGrey
	highlight PmenuSbar guibg=#3d3d56 ctermbg=DarkMagenta
	highlight PmenuSel guibg=#3d3d56 ctermfg=Gray ctermbg=DarkMagenta
	highlight PmenuThumb guibg=#ff3399 ctermbg=LightRed
	highlight Search guifg=#ffffff guibg=#ff3399 ctermfg=White ctermbg=LightRed cterm=NONE
	highlight SignColumn guifg=#b3b3d4 guibg=#2c2c3e
	highlight SpecialKey guifg=#2d2d3c ctermfg=DarkGray
	highlight SpellBad guifg=#ffffff guibg=#ff3399 ctermfg=White ctermbg=LightRed
	highlight SpellCap guifg=#1d1d26 guibg=#ffcc66 ctermfg=Black ctermbg=DarkYellow
	highlight SpellLocal guifg=#1d1d26 guibg=#ffcc66 ctermfg=Black ctermbg=DarkYellow
	highlight SpellRare guifg=#1d1d26 guibg=#ffcc66 ctermfg=Black ctermbg=DarkYellow
	highlight StatusLine guifg=#f8f8f0 guibg=#ff3399 term=NONE ctermfg=White ctermbg=LightRed cterm=bold
	highlight StatusLineNC guibg=#3d3d56 term=NONE cterm=NONE ctermfg=White ctermbg=DarkMagenta
	highlight StatusLineTerm guibg=#00d364 ctermfg=Black ctermbg=LightGreen
	highlight StatusLineTermNC guibg=#0a964f ctermfg=Black ctermbg=DarkGreen " This is green at aa/ff opacity on #1d1d26 bg
	highlight TabLineFill guibg=#1d1d26 gui=NONE term=NONE cterm=NONE
	highlight TabLine guibg=#252530 gui=NONE term=NONE ctermbg=DarkGray cterm=NONE
	highlight TabLineSel guibg=#3d3d56 ctermbg=DarkMagenta
	highlight Title guifg=#ffffff gui=bold term=bold ctermfg=White cterm=bold
	highlight VertSplit guibg=#3d3d56 term=NONE ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
	highlight Visual guibg=#4a213d ctermbg=DarkMagenta " This is pink at 33/ff opacity on #1d1d26 bg
	highlight WarningMsg guifg=#1d1d26 guibg=#ffcc66 ctermfg=Black ctermbg=DarkYellow

	" Filetype-specific
	" -----------------

	" For javascript (vim's built-in plugin)
	highlight javaScriptIdentifier guifg=#00bfff gui=bold,italic term=bold,italic ctermfg=LightBlue cterm=bold,italic
	highlight javaScriptFunction guifg=#00bfff gui=italic term=italic ctermfg=LightBlue cterm=italic
	highlight javaScriptBraces guifg=NONE ctermfg=NONE

	" For vim-javascript <https://github.com/pangloss/vim-javascript>
	highlight jsArrowFunction guifg=#00bfff gui=bold term=bold ctermfg=LightBlue cterm=bold
	highlight jsFuncArgs guifg=#ffcc66 gui=italic term=italic ctermfg=Yellow cterm=italic
	highlight jsGlobalNodeObjects guifg=#00ced1 ctermfg=DarkCyan
	highlight jsVariableDef guifg=#00d364 ctermfg=LightGreen

	" For markdown (vim's built-in plugin)
	highlight markdownHeadingDelimiter guifg=#ff3399 gui=bold term=bold ctermfg=LightRed cterm=bold
	highlight markdownLinkTextDelimiter guifg=#ffcc66 ctermfg=Yellow
	highlight markdownLinkText guifg=#ff3399 ctermfg=LightRed
	highlight markdownUrl guifg=#00bfff gui=underline term=underline ctermfg=LightBlue cterm=underline

	" For ruby (vim's built-in plugin)
	highlight rubyDefine guifg=#ff3399 gui=bold term=bold ctermfg=LightRed cterm=bold
	highlight rubyKeywordAsMethod guifg=#00d364 ctermfg=LightGreen " FIXME: not working
	highlight rubyLocalVariableOrMethod guifg=#00d364 ctermfg=LightGreen " FIXME: not working
	highlight rubyStringDelimiter guifg=#ffcc66 ctermfg=DarkCyan

endif
