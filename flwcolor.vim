" vim: set fdm=marker:
" flw 的配色方案，共有若干种，用 F3 切换
"
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand("<sfile>:t:r")

let s:group = (reltime()[0] % 2) + 2
"let s:group = 3

if s:group == 0     " 超级经典的黑底彩字
    set t_Co=16
    " 全部内置高亮组 {{{
    hi Normal           term=NONE       cterm=NONE      ctermbg=Black       ctermfg=Grey        gui=NONE    guibg=Grey20        guifg=White
    hi NonText          term=bold       cterm=bold                          ctermfg=LightBlue   gui=bold    guibg=Grey30        guifg=LightBlue
    hi CursorLine       term=underline  cterm=underline                                         gui=NONE    guibg=Grey40
    " hi Conceal
    hi Cursor                                                                                   gui=NONE    guibg=Green         guifg=NONE
    hi CursorIM                                                                                 gui=NONE    guibg=Purple        guifg=NONE
    hi ColorColumn      term=reverse    cterm=NONE      ctermbg=Black       ctermfg=DarkRed
    hi CursorColumn     term=reverse    cterm=NONE      ctermbg=Black                           gui=NONE    guibg=Grey40
    hi Directory        term=bold       cterm=bold                          ctermfg=LightCyan   gui=NONE                        guifg=Cyan
    hi DiffAdd          term=bold       cterm=NONE      ctermbg=DarkBlue                        gui=NONE    guibg=DarkBlue
    hi DiffChange       term=bold       cterm=NONE      ctermbg=DarkBlue                        gui=NONE    guibg=DarkMagenta
    hi DiffDelete       term=bold       cterm=NONE      ctermbg=Black       ctermfg=Black       gui=bold    guibg=DarkCyan      guifg=Blue
    hi DiffText         term=reverse    cterm=NONE      ctermbg=DarkRed                         gui=bold    guibg=Red
    hi ErrorMsg         term=standout   cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=NONE    guibg=Red           guifg=White
    hi VertSplit        term=reverse    cterm=reverse                                           gui=reverse
    hi Folded           term=standout   cterm=NONE      ctermbg=DarkMagenta ctermfg=White       gui=NONE    guibg=LightGrey     guifg=DarkBlue
    hi FoldColumn       term=standout   cterm=NONE      ctermbg=DarkGrey    ctermfg=DarkBlue    gui=NONE    guibg=Grey          guifg=DarkBlue
    hi SignColumn       term=NONE       cterm=NONE      ctermbg=31          ctermfg=31          gui=NONE    guibg=#287eff       guifg=Cyan
    hi Search           term=reverse    cterm=NONE      ctermbg=Blue        ctermfg=Yellow      gui=reverse guibg=Yellow        guifg=Black
    hi IncSearch        term=reverse    cterm=reverse                                           gui=reverse
    hi LineNr           term=underline  cterm=NONE                          ctermfg=DarkGrey    gui=NONE                        guifg=Yellow
    hi MatchParen       term=reverse    cterm=reverse   ctermbg=6                                           guibg=DarkCyan
    hi ModeMsg          term=bold       cterm=bold                                              gui=bold
    hi MoreMsg          term=bold       cterm=bold                          ctermfg=LightGreen  gui=bold                        guifg=SeaGreen
    hi Pmenu            term=bold       cterm=NONE      ctermbg=DarkMagenta ctermfg=White
    hi PmenuSel         term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=Yellow
    hi PmenuSbar        term=bold       cterm=NONE      ctermbg=DarkBlue
    hi PmenuThumb       term=bold       cterm=NONE      ctermbg=DarkGreen   ctermfg=DarkGreen
    hi Question         term=standout   cterm=standout                      ctermfg=LightGreen  gui=bold                        guifg=Green
    hi SpecialKey       term=bold       cterm=bold                          ctermfg=LightBlue   gui=bold                        guifg=Cyan
    hi SpellBad         term=reverse    cterm=NONE      ctermbg=DarkRed                         gui=bold    guibg=Red
    " hi SpellCap
    " hi SpellLocal
    " hi SpellRare
    hi StatusLine       term=reverse,bold   cterm=NONE  ctermbg=DarkBlue    ctermfg=Green       gui=reverse,bold
    hi StatusLineNC     term=reverse    cterm=NONE      ctermbg=DarkBlue    ctermfg=Grey        gui=reverse
    hi TabLine          term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=Grey
    hi TabLineSel       term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=Yellow
    hi TabLineFill      term=bold       cterm=NONE      ctermbg=DarkBlue
    hi Title            term=bold       cterm=NONE                          ctermfg=Magenta     gui=bold                       guifg=Magenta
    hi Visual           term=reverse    cterm=NONE      ctermbg=DarkGreen   ctermfg=Yellow      gui=reverse  guibg=Grey60
    " hi VisualNOS
    hi WarningMsg       term=standout   cterm=NONE                          ctermfg=RED         gui=standout                    guifg=Red
    hi WildMenu         term=standout   cterm=NONE      ctermbg=DarkBlue    ctermfg=Red         gui=standout guibg=Yellow       guifg=Black
    " hi lCursor guibg=Cyan guifg=Black
    " }}}
    " 通用语法元素 {{{
    hi Constant         term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Special          term=bold       cterm=NONE                          ctermfg=Red         gui=NONE    guibg=Grey5         guifg=Orange
    hi Statement        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Control          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Ignore           term=bold       cterm=bold                          ctermfg=DarkGrey    gui=bold                        guifg=Grey20
    hi Comment          term=bold       cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#80a0ff
    hi Identifier       term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi PreProc          term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Type             term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Underlined       term=underline  cterm=bold,underline                ctermfg=DarkBlue    gui=underline                   guifg=#80a0ff
    hi Error            term=reverse    cterm=bold      ctermbg=DarkRed     ctermfg=Grey        gui=bold    guibg=Red           guifg=White
    hi String           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Character        term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Todo             term=standout   cterm=NONE      ctermbg=Yellow      ctermfg=Black       gui=bold    guibg=Yellow        guifg=Blue
    hi Number           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Boolean          term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Float            term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Function         term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi Conditional      term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Repeat           term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Label            term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Operator         term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Keyword          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Exception        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Include          term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Define           term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Macro            term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi PreCondit        term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi StorageClass     term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Structure        term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Typedef          term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Tag              term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialChar      term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi Delimiter        term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialComment   term=bold       cterm=bold                          ctermfg=LightBlue   gui=NONE    guibg=Grey5         guifg=Orange
    hi Debug            term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SignColor        term=NONE       cterm=NONE      ctermbg=Blue                            gui=NONE    guibg=#287eff
    hi FlwQfCurLine     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=NONE    guibg=#287eff       guifg=#ffffff
    " }}}
elseif s:group == 1   " 影响深远的 Turbo C 经典蓝底黄字
    set t_Co=256
    " 全部内置高亮组 {{{
    hi Normal               term=NONE       cterm=NONE      ctermbg=DarkBlue    ctermfg=250         gui=NONE    guibg=DarkBlue      guifg=Yellow
    hi NonText              term=bold       cterm=bold                          ctermfg=Magenta     gui=bold                        guifg=Magenta
    hi CursorLine       term=underline  cterm=bold      ctermbg=18                              gui=NONE    guibg=Grey40
    " hi Conceal
    hi Cursor                                                                                   gui=NONE    guibg=Green         guifg=NONE
    hi CursorIM                                                                                 gui=NONE    guibg=Purple        guifg=NONE
    hi ColorColumn      term=reverse    cterm=NONE      ctermbg=Black       ctermfg=DarkRed
    hi CursorColumn     term=reverse    cterm=NONE      ctermbg=Black                           gui=NONE    guibg=Grey40
    hi Directory        term=bold       cterm=bold                          ctermfg=LightCyan   gui=NONE                        guifg=Cyan
    hi DiffAdd          term=bold       cterm=NONE      ctermbg=63                              gui=NONE    guibg=SlateBlue     guifg=Black
    hi DiffChange       term=bold       cterm=NONE      ctermbg=63                              gui=NONE    guibg=DarkGreen     guifg=Black
    hi DiffDelete       term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=DarkBlue    gui=bold    guibg=Coral         guifg=Black
    hi DiffText         term=reverse    cterm=NONE      ctermbg=208         ctermfg=Black       gui=bold    guibg=Olivedrab     guifg=Black
    hi ErrorMsg             term=standout   cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=NONE    guibg=DarkBlue      guifg=Orange
    hi VertSplit        term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=Blue        gui=NONE    guibg=Blue          guifg=Blue
    hi Folded           term=standout   cterm=NONE      ctermbg=76          ctermfg=Black       gui=NONE    guibg=Orange        guifg=DarkBlue
    hi FoldColumn       term=standout   cterm=NONE      ctermbg=70          ctermfg=DarkBlue    gui=NONE    guibg=Grey          guifg=DarkBlue
    hi SignColumn       term=NONE       cterm=NONE      ctermbg=31          ctermfg=31          gui=NONE    guibg=#287eff       guifg=Cyan
    hi Search           term=reverse    cterm=NONE      ctermbg=Cyan        ctermfg=Black       gui=reverse guibg=Orange        guifg=Black
    hi IncSearch        term=reverse    cterm=reverse                                           gui=reverse
    hi LineNr           term=underline  cterm=NONE                          ctermfg=DarkCyan    gui=NONE                        guifg=Cyan
    hi MatchParen       term=reverse    cterm=reverse   ctermbg=6                                           guibg=DarkCyan
    hi ModeMsg          term=bold       cterm=NONE                          ctermfg=Cyan        gui=bold                        guifg=Yellow
    hi MoreMsg          term=NONE       cterm=NONE                          ctermfg=Yellow      gui=bold                        guifg=SeaGreen
    hi Pmenu            term=bold       cterm=NONE      ctermbg=DarkMagenta ctermfg=White
    hi PmenuSel         term=bold       cterm=NONE      ctermbg=220         ctermfg=30
    hi PmenuSbar        term=bold       cterm=NONE      ctermbg=Red
    hi PmenuThumb       term=bold       cterm=NONE      ctermbg=DarkGreen   ctermfg=DarkGreen
    hi Question         term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=bold                        guifg=Green
    hi SpecialKey       term=bold       cterm=bold                          ctermfg=LightBlue   gui=bold                        guifg=Cyan
    hi SpeelBad         term=reverse    cterm=NONE      ctermbg=208         ctermfg=Black       gui=bold    guibg=Olivedrab     guifg=Black
    " hi SpellCap
    " hi SpellLocal
    " hi SpellRare
    hi StatusLine       term=bold       cterm=bold      ctermbg=Blue        ctermfg=Cyan        gui=bold    guibg=Blue          guifg=Cyan
    hi StatusLineNC     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=Black       gui=NONE    guibg=Blue          guifg=Bloack
    hi TabLine          term=bold       cterm=NONE      ctermbg=Blue        ctermfg=Black
    hi TabLineSel       term=bold       cterm=NONE      ctermbg=Blue        ctermfg=Yellow
    hi TabLineFill      term=bold       cterm=NONE      ctermbg=Blue
    hi Title            term=bold       cterm=NONE                          ctermfg=Magenta     gui=bold                       guifg=Magenta
    hi Visual               term=reverse        cterm=NONE      ctermbg=DarkCyan    ctermfg=Yellow      gui=NONE    guibg=DarkCyan

    " hi VisualNOS
    hi WarningMsg       term=standout   cterm=NONE      ctermbg=Black       ctermfg=Yellow      gui=standout                    guifg=Red
    hi WildMenu         term=standout   cterm=NONE      ctermbg=92          ctermfg=White       gui=standout guibg=Yellow       guifg=Black
    " }}}
    " 通用语法元素 {{{
    hi Constant         term=underline  cterm=NONE                          ctermfg=Cyan        gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Special          term=bold       cterm=NONE                          ctermfg=Magenta     gui=NONE                        guifg=Magenta
    hi Statement        term=bold       cterm=bold                          ctermfg=White       gui=bold                        guifg=#ffff60
    hi Control          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Ignore           term=bold       cterm=bold                          ctermfg=DarkGrey    gui=bold                        guifg=Grey20
    hi Comment              term=bold       cterm=NONE                          ctermfg=LightBlue   gui=bold                        guifg=#80a0ff
    hi Identifier       term=underline  cterm=bold                          ctermfg=Red         gui=bold                        guifg=#40ffff
    hi PreProc          term=underline  cterm=NONE      ctermbg=DarkMagenta ctermfg=White       gui=bold                        guifg=#ff80ff
    hi Type             term=underline  cterm=bold                          ctermfg=Green       gui=bold                        guifg=#60ff60
    hi Underlined       term=underline  cterm=bold,underline                ctermfg=Cyan        gui=underline                   guifg=#80a0ff
    hi Error            term=reverse    cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=bold    guibg=Red           guifg=White
    hi String           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Character        term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Todo             term=standout   cterm=NONE      ctermbg=Yellow      ctermfg=Black       gui=bold    guibg=Yellow        guifg=Blue
    hi Number           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Boolean          term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Float            term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Function         term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi Conditional      term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Repeat           term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Label            term=bold       cterm=bold      ctermbg=Brown       ctermfg=White       gui=bold                        guifg=#ffff60
    hi Operator         term=bold       cterm=bold      ctermbg=Blue        ctermfg=White       gui=bold                        guifg=#ffff60
    hi Keyword          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Exception        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Include          term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#ff80ff
    hi Define           term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#ff80ff
    hi Macro            term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#ff80ff
    hi PreCondit        term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#ff80ff
    hi StorageClass     term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Structure        term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Typedef          term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Tag              term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialChar      term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi Delimiter        term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialComment   term=bold       cterm=bold                          ctermfg=154         gui=NONE    guibg=Grey5         guifg=Orange
    hi Debug            term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SignColor        term=NONE       cterm=NONE      ctermbg=60                              gui=NONE    guibg=#287eff
    hi FlwQfCurLine     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=NONE    guibg=#287eff       guifg=#ffffff
    " }}}
elseif s:group == 2    " 成熟厚重的 DarkBlue 变体
    set t_Co=256
    " 全部内置高亮组 {{{
    hi Normal               term=NONE       cterm=NONE      ctermbg=17          ctermfg=250         gui=NONE    guibg=DarkBlue      guifg=Yellow
    hi NonText              term=bold       cterm=bold                          ctermfg=Magenta     gui=bold                        guifg=Magenta
    hi CursorLine       term=underline  cterm=NONE      ctermbg=18                              gui=NONE    guibg=Grey40
    " hi Conceal
    hi Cursor                                                                                   gui=NONE    guibg=Green         guifg=NONE
    hi CursorIM                                                                                 gui=NONE    guibg=Purple        guifg=NONE
    hi ColorColumn      term=reverse    cterm=NONE      ctermbg=Black       ctermfg=DarkRed
    hi CursorColumn     term=reverse    cterm=NONE      ctermbg=Black                           gui=NONE    guibg=Grey40
    hi Directory        term=bold       cterm=bold                          ctermfg=LightCyan   gui=NONE                        guifg=Cyan
    hi DiffAdd          term=bold       cterm=NONE      ctermbg=63                              gui=NONE    guibg=SlateBlue     guifg=Black
    hi DiffChange       term=bold       cterm=NONE      ctermbg=63                              gui=NONE    guibg=DarkGreen     guifg=Black
    hi DiffDelete       term=bold       cterm=NONE      ctermbg=17          ctermfg=17          gui=bold    guibg=Coral         guifg=Black
    hi DiffText         term=reverse    cterm=NONE      ctermbg=Red         ctermfg=Black       gui=bold    guibg=Olivedrab     guifg=Black
    hi ErrorMsg             term=standout   cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=NONE    guibg=#287eff       guifg=#ffffff
    hi VertSplit        term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=Blue        gui=NONE    guibg=Blue          guifg=Blue
    hi Folded           term=bold       cterm=bold      ctermbg=61          ctermfg=154         gui=NONE    guibg=#000040       guifg=#808080
    hi FoldColumn       term=standout   cterm=NONE      ctermbg=26          ctermfg=Grey        gui=NONE    guibg=Grey          guifg=DarkBlue
    hi SignColumn       term=NONE       cterm=NONE      ctermbg=31          ctermfg=31          gui=NONE    guibg=#287eff       guifg=Cyan
    hi Search           term=reverse    cterm=NONE      ctermbg=DarkBlue    ctermfg=White       gui=NONE    guibg=#2050d0       guifg=#90fff0
    hi IncSearch        term=reverse    cterm=reverse                                           gui=reverse
    hi LineNr           term=underline  cterm=NONE                          ctermfg=112         gui=NONE                        guifg=#90f020
    hi MatchParen       term=reverse    cterm=reverse   ctermbg=6                                           guibg=DarkCyan
    hi ModeMsg          term=bold       cterm=NONE                          ctermfg=Cyan        gui=bold                        guifg=Yellow
    hi MoreMsg          term=NONE       cterm=NONE                          ctermfg=Yellow      gui=bold                        guifg=SeaGreen
    hi Pmenu            term=bold       cterm=NONE      ctermbg=DarkMagenta ctermfg=White
    hi PmenuSel         term=bold       cterm=NONE      ctermbg=220         ctermfg=30
    hi PmenuSbar        term=bold       cterm=NONE      ctermbg=Red
    hi PmenuThumb       term=bold       cterm=NONE      ctermbg=DarkGreen   ctermfg=DarkGreen
    hi Question         term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=bold                        guifg=Green
    hi SpecialKey       term=bold       cterm=bold                          ctermfg=LightBlue   gui=bold                        guifg=Cyan
    hi SpellBad         term=reverse    cterm=NONE      ctermbg=Red         ctermfg=Black       gui=bold    guibg=Olivedrab     guifg=Black
    " hi SpellCap
    " hi SpellLocal
    " hi SpellRare
    hi StatusLine       term=bold       cterm=bold      ctermbg=Blue        ctermfg=Cyan        gui=bold    guibg=Blue          guifg=Cyan
    hi StatusLineNC     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=Black       gui=NONE    guibg=Blue          guifg=Black
    hi TabLine          term=bold       cterm=NONE      ctermbg=Blue        ctermfg=Black
    hi TabLineSel       term=bold       cterm=NONE      ctermbg=Blue        ctermfg=Yellow
    hi TabLineFill      term=bold       cterm=NONE      ctermbg=Blue
    hi Title            term=bold       cterm=NONE                          ctermfg=Magenta     gui=bold                       guifg=Magenta
    hi Visual               term=reverse        cterm=NONE      ctermbg=DarkCyan    ctermfg=Yellow      gui=NONE    guibg=DarkCyan

    " hi VisualNOS
    hi WarningMsg       term=standout   cterm=NONE      ctermbg=Black       ctermfg=Yellow      gui=standout                    guifg=Red
    hi WildMenu         term=standout   cterm=NONE      ctermbg=92          ctermfg=White       gui=standout guibg=Yellow       guifg=Black
    " }}}
    " 通用语法元素 {{{
    hi Constant         term=underline  cterm=NONE                          ctermfg=Cyan        gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Special          term=bold       cterm=NONE                          ctermfg=Magenta     gui=NONE                        guifg=Magenta
    hi Statement        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Control          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Ignore           term=bold       cterm=bold                          ctermfg=DarkGrey    gui=bold                        guifg=Grey20
    hi Comment          term=bold       cterm=NONE                          ctermfg=67          gui=bold                        guifg=#80a0ff
    hi Identifier       term=underline  cterm=bold                          ctermfg=Red         gui=bold                        guifg=#40ffff
    hi PreProc          term=underline  cterm=NONE      ctermbg=DarkMagenta ctermfg=White       gui=bold                        guifg=#ff80ff
    hi Type             term=underline  cterm=bold                          ctermfg=Green       gui=bold                        guifg=#60ff60
    hi Underlined       term=underline  cterm=bold,underline                ctermfg=Cyan        gui=underline                   guifg=#80a0ff
    hi Error            term=reverse    cterm=NONE      ctermbg=DarkRed     ctermfg=Yellow      gui=bold    guibg=Red           guifg=White
    hi String           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Character        term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Todo             term=standout   cterm=NONE      ctermbg=Yellow      ctermfg=Black       gui=bold    guibg=Yellow        guifg=Blue
    hi Number           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Boolean          term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Float            term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Function         term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi Conditional      term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Repeat           term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Label            term=bold       cterm=bold      ctermbg=Brown       ctermfg=White       gui=bold                        guifg=#ffff60
    hi Operator         term=bold       cterm=bold                          ctermfg=Green       gui=bold                        guifg=#ffff60
    hi Keyword          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Exception        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Include          term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Define           term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Macro            term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi PreCondit        term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi StorageClass     term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Structure        term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Typedef          term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Tag              term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialChar      term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi Delimiter        term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialComment   term=bold       cterm=bold                          ctermfg=178         gui=NONE    guibg=Grey5         guifg=Orange
    hi Debug            term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SignColor        term=NONE       cterm=NONE      ctermbg=60                              gui=NONE    guibg=#287eff
    hi FlwQfCurLine     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=NONE    guibg=#287eff       guifg=#ffffff
    " }}}
hi Visual               guifg=#8080ff guibg=fg          gui=reverse                             ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS    guifg=#8080ff guibg=fg          gui=reverse,underline   ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo                 guifg=#d14a14 guibg=#1248d1                                             ctermfg=red     ctermbg=darkblue
hi IncSearch    guifg=#b0ffff guibg=#2050d0                                                     ctermfg=darkblue ctermbg=gray

hi SpecialKey           guifg=cyan                      ctermfg=darkcyan
hi Directory            guifg=cyan                      ctermfg=cyan
hi Title                        guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg           guifg=red                       ctermfg=red
hi WildMenu                     guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg                      guifg=#22cce2           ctermfg=lightblue
hi MoreMsg                      ctermfg=darkgreen       ctermfg=darkgreen
hi Question                     guifg=green gui=none ctermfg=green cterm=none
hi NonText                      guifg=#0030ff           ctermfg=darkblue

hi StatusLine   guifg=blue guibg=darkgray gui=none              ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit    guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none

hi Cursor       guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor      guifg=black guibg=white ctermfg=black ctermbg=white


hi Constant     ctermfg=magenta guifg=#ffa0a0 cterm=none
hi Special      ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier   ctermfg=cyan guifg=#40ffff cterm=none
hi Statement    ctermfg=yellow cterm=none guifg=#ffff60 gui=none
hi Type         ctermfg=green guifg=#60ff60 gui=none cterm=none
hi Underlined   cterm=underline term=underline
hi Ignore       guifg=bg ctermfg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0

    hi Pmenu ctermfg=White ctermbg=DarkMagenta
    hi PmenuSel ctermfg=30 ctermbg=220
    hi PmenuSbar ctermfg=DarkBlue ctermbg=DarkBlue
    hi PmenuThumb ctermfg=DarkGreen ctermbg=DarkGreen
    hi StatusLine cterm=NONE ctermfg=White ctermbg=92
    hi StatusLineNC cterm=NONE ctermfg=Grey ctermbg=234
    hi WildMenu cterm=NONE ctermfg=White ctermbg=26
    hi TabLine cterm=NONE ctermfg=Grey ctermbg=DarkBlue
    hi TabLineSel cterm=NONE ctermfg=Yellow ctermbg=DarkBlue
    hi TabLineFill cterm=NONE ctermfg=DarkBlue ctermbg=DarkBlue
    hi Visual cterm=NONE ctermbg=61
    hi SpecialKey ctermfg=14
    hi! link IncSearch Search
    hi Special      ctermfg=Red
elseif s:group == 3     " 低调淡定的浅灰色调
    set t_Co=256
    " 全部内置高亮组 {{{
    hi Normal           term=NONE       cterm=NONE      ctermbg=233         ctermfg=Grey        gui=NONE    guibg=Grey20        guifg=White
    hi NonText          term=bold       cterm=bold                          ctermfg=LightBlue   gui=bold    guibg=Grey30        guifg=LightBlue
    hi CursorLine       term=underline  cterm=NONE      ctermbg=234                             gui=NONE    guibg=Grey40
    " hi Conceal
    hi Cursor                                                                                   gui=NONE    guibg=Green         guifg=NONE
    hi CursorIM                                                                                 gui=NONE    guibg=Purple        guifg=NONE
    hi ColorColumn      term=reverse    cterm=NONE      ctermbg=Black       ctermfg=DarkRed
    hi CursorColumn     term=reverse    cterm=NONE      ctermbg=Black                           gui=NONE    guibg=Grey40
    hi Directory        term=bold       cterm=bold                          ctermfg=LightCyan   gui=NONE                        guifg=Cyan
    hi DiffAdd          term=bold       cterm=NONE      ctermbg=DarkBlue                        gui=NONE    guibg=DarkBlue
    hi DiffChange       term=bold       cterm=NONE      ctermbg=DarkBlue                        gui=NONE    guibg=DarkMagenta
    hi DiffDelete       term=bold       cterm=NONE      ctermbg=233         ctermfg=233         gui=bold    guibg=DarkCyan      guifg=Blue
    hi DiffText         term=reverse    cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=bold    guibg=Red
    hi ErrorMsg         term=standout   cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=NONE    guibg=Red           guifg=White
    hi VertSplit        term=reverse    cterm=reverse                                           gui=reverse
    hi Folded           term=standout   cterm=NONE      ctermbg=61          ctermfg=White       gui=NONE    guibg=LightGrey     guifg=DarkBlue
    hi FoldColumn       term=standout   cterm=NONE      ctermbg=25          ctermfg=DarkBlue    gui=NONE    guibg=Grey          guifg=DarkBlue
    hi SignColumn       term=NONE       cterm=NONE      ctermbg=31          ctermfg=31          gui=NONE    guibg=#287eff       guifg=Cyan
    hi Search           term=reverse    cterm=NONE      ctermbg=22          ctermfg=220         gui=reverse guibg=Yellow        guifg=Black
    hi IncSearch        term=reverse    cterm=reverse                                           gui=reverse
    hi LineNr           term=underline  cterm=NONE                          ctermfg=100         gui=NONE                        guifg=Yellow
    hi MatchParen       term=reverse    cterm=reverse   ctermbg=6                                           guibg=DarkCyan
    hi ModeMsg          term=bold       cterm=bold                                              gui=bold
    hi MoreMsg          term=bold       cterm=bold                          ctermfg=LightGreen  gui=bold                        guifg=SeaGreen
    hi Pmenu            term=bold       cterm=NONE      ctermbg=DarkMagenta ctermfg=White
    hi PmenuSel         term=bold       cterm=NONE      ctermbg=220         ctermfg=30
    hi PmenuSbar        term=bold       cterm=NONE      ctermbg=DarkBlue
    hi PmenuThumb       term=bold       cterm=NONE      ctermbg=DarkGreen   ctermfg=DarkGreen
    hi Question         term=standout   cterm=standout                      ctermfg=LightGreen  gui=bold                        guifg=Green
    hi SpecialKey       term=bold       cterm=bold                          ctermfg=14          gui=bold                        guifg=Cyan
    hi SpellBad         term=reverse    cterm=NONE      ctermbg=DarkRed     ctermfg=White       gui=bold    guibg=Red
    " hi SpellCap
    " hi SpellLocal
    " hi SpellRare
    hi StatusLine       term=reverse,bold   cterm=NONE  ctermbg=92          ctermfg=231         gui=reverse,bold
    hi StatusLineNC     term=reverse    cterm=NONE      ctermbg=92          ctermfg=80          gui=reverse
    hi TabLine          term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=Grey
    hi TabLineSel       term=bold       cterm=NONE      ctermbg=DarkBlue    ctermfg=Yellow
    hi TabLineFill      term=bold       cterm=NONE      ctermbg=DarkBlue
    hi Title            term=bold       cterm=NONE                          ctermfg=Magenta     gui=bold                       guifg=Magenta
    hi Visual           term=reverse    cterm=NONE      ctermbg=61          ctermfg=Yellow      gui=reverse  guibg=Grey60
    " hi VisualNOS
    hi WarningMsg       term=standout   cterm=NONE                          ctermfg=RED         gui=standout                    guifg=Red
    hi WildMenu         term=standout   cterm=NONE      ctermbg=26          ctermfg=231         gui=standout guibg=Yellow       guifg=Black
    " }}}
    " 通用语法元素 {{{
    hi Constant         term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Special          term=bold       cterm=NONE                          ctermfg=Red         gui=NONE    guibg=Grey5         guifg=Orange
    hi Statement        term=bold       cterm=bold                          ctermfg=75          gui=bold                        guifg=#ffff60
    hi Control          term=bold       cterm=bold                          ctermfg=208         gui=bold                        guifg=#ffff60
    hi Ignore           term=bold       cterm=bold                          ctermfg=DarkGrey    gui=bold                        guifg=Grey20
    hi Comment          term=bold       cterm=NONE                          ctermfg=66          gui=bold                        guifg=#80a0ff
    hi Identifier       term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi PreProc          term=underline  cterm=bold      ctermbg=DarkMagenta ctermfg=White       gui=bold                        guifg=#ff80ff
    hi Type             term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Underlined       term=underline  cterm=bold,underline                ctermfg=DarkBlue    gui=underline                   guifg=#80a0ff
    hi Error            term=reverse    cterm=bold      ctermbg=DarkRed     ctermfg=Grey        gui=bold    guibg=Red           guifg=White
    hi String           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Character        term=underline  cterm=NONE                          ctermfg=White       gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Todo             term=standout   cterm=NONE      ctermbg=Yellow      ctermfg=Black       gui=bold    guibg=Yellow        guifg=Blue
    hi Number           term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Boolean          term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Float            term=underline  cterm=NONE                          ctermfg=Magenta     gui=NONE    guibg=Grey5         guifg=#ffa0a0
    hi Function         term=underline  cterm=bold                          ctermfg=DarkCyan    gui=bold                        guifg=#40ffff
    hi Conditional      term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Repeat           term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Label            term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Operator         term=bold       cterm=bold                          ctermfg=Green       gui=bold                        guifg=#ffff60
    hi Keyword          term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Exception        term=bold       cterm=bold                          ctermfg=Yellow      gui=bold                        guifg=#ffff60
    hi Include          term=underline  cterm=bold                          ctermfg=Blue        gui=bold                        guifg=#ff80ff
    hi Define           term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi Macro            term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi PreCondit        term=underline  cterm=bold                          ctermfg=DarkBlue    gui=bold                        guifg=#ff80ff
    hi StorageClass     term=underline  cterm=NONE                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Structure        term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Typedef          term=underline  cterm=bold                          ctermfg=DarkGreen   gui=bold                        guifg=#60ff60
    hi Tag              term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialChar      term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi Delimiter        term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SpecialComment   term=bold       cterm=bold                          ctermfg=178         gui=NONE    guibg=Grey5         guifg=Orange
    hi Debug            term=bold       cterm=NONE                          ctermfg=LightRed    gui=NONE    guibg=Grey5         guifg=Orange
    hi SignColor        term=NONE       cterm=NONE      ctermbg=23                              gui=NONE    guibg=#287eff
    hi FlwQfCurLine     term=NONE       cterm=NONE      ctermbg=Blue        ctermfg=White       gui=NONE    guibg=#287eff       guifg=#ffffff
    " }}}
endif

" Perl 代码颜色设置，不得不说，缺省的 Perl 高亮颜色太单调了，满屏幕都是蓝色和黄色。
autocmd FileType perl hi link perlVarPlain NONE
autocmd FileType perl hi link perlVarPlain2 NONE
autocmd FileType perl hi link perlFunctionName NONE
autocmd FileType perl hi link perlComment Comment
autocmd FileType perl hi link perlPOD SpecialComment
autocmd FileType perl hi link perlStatement Statement
autocmd FileType perl hi link perlOperator Operator
autocmd FileType perl hi link perlConditional Conditional
autocmd FileType perl hi link perlStatementControl Control
autocmd FileType perl hi link perlStatementFlow Control
autocmd FileType perl hi link perlStatementStorage StorageClass
autocmd FileType perl hi link perlStatementInclude Include
autocmd FileType perl hi link perlRepeat Repeat
autocmd FileType perl hi link perlStatementNumeric SpellBad
autocmd FileType perl hi link perlStatementScalar Operator
autocmd FileType perl hi link perlStatementRegexp Operator
autocmd FileType perl hi link perlStatementList Operator
autocmd FileType perl hi link perlStatementHash Operator

" 为 POE 增加的关键字
autocmd FileType perl,pod syntax keyword perlStatementControl spawn spawnSession yield call post delay alias_set
autocmd FileType perl,pod syntax match perlFunction "\<event\|service\>\_s*" contains=perlBracesSQ
autocmd FileType perl,pod syntax region perlSubFold start="^\z(\s*\)\<event\|service\>.*[^};]$" end="^\z1}\s*\%(#.*\)\=$" transparent fold keepend
autocmd FileType perl,pod syntax sync match perlSync grouphere NONE "^\s*\<event\|service\>"

autocmd FileType pod unlet b:current_syntax
autocmd FileType pod syntax include @Perl syntax/perl.vim
autocmd FileType pod syntax cluster Perl remove=perlFunctionName,perlElseIfError
autocmd FileType pod syntax region podExampleCode start="^\s" end="\ze\n\S" contains=@Perl
autocmd FileType pod hi podVerbatimLine ctermbg=Grey

nmap <F3> :colorscheme flwcolor<CR>
