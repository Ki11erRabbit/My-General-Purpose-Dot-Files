" =============================================================================
" Filename: autoload/lightline/colorscheme/st.vim
" Author: ki11errabbit
" License: MIT License
" Last Change: 2022/03/18 12:59:00.
" =============================================================================
let s:gray0 = '#222222'
let s:gray1 = '#2a2a2a'
let s:gray2 = '#333333'
let s:gray3 = '#3a3a3a'
let s:gray4 = '#444444'
let s:gray5 = '#bbbbbb'
let s:gray6 = '#eeeeee'

let s:base0 = '#444444'
let s:base1 = '#006495'
let s:base2 = '#bbbbbb'
let s:base3 = '#bbbbbb'
let s:base00 = '#ffff00'
let s:base01 = '#2a2a2a'
let s:base02 = '#222222'
let s:base023 = '#f0f000'
let s:base03 = '#00f0f0'

let s:white = '#eeeeee'
let s:black = '#151515'
let s:yellow = '#d4d400'
let s:orange = '#c56b00'
let s:red = '#c20000'
let s:magenta = '#b300b3'
let s:purple = '#6800a4'
let s:blue = '#0073e4'
let s:cyan = '#006495'
let s:green = '#00a464'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:gray6, s:blue ], [ s:gray6, s:cyan ] ]
let s:p.normal.middle = [ [ s:gray5, s:gray0 ] ]
let s:p.normal.right = [ [ s:gray6, s:cyan ], [ s:gray5, s:gray1 ] ]
let s:p.inactive.left =  [ [ s:gray5, s:gray1 ], [ s:gray5, s:gray1 ] ]
let s:p.inactive.middle = [ [ s:gray5, s:gray0 ] ]
let s:p.inactive.right = [ [ s:gray6, s:gray3 ], [ s:gray5, s:gray1 ] ]
let s:p.insert.left = [ [ s:gray2, s:green ], [ s:gray6, s:cyan ] ]
let s:p.replace.left = [ [ s:gray2, s:red ], [ s:gray6, s:cyan ] ]
let s:p.visual.left = [ [ s:gray6, s:purple ], [ s:gray6, s:cyan ] ]
let s:p.tabline.tabsel = [ [ s:gray6, s:cyan ] ]
let s:p.tabline.left = [ [ s:gray5, s:gray0 ] ]
let s:p.tabline.middle = [ [ s:gray5, s:gray0 ] ]
let s:p.tabline.right = [ [ s:gray6, s:gray1 ] ]
let s:p.normal.error = [ [ s:gray2, s:red ] ]
let s:p.normal.warning = [ [ s:gray2, s:yellow ] ]

let g:lightline#colorscheme#st#palette = lightline#colorscheme#fill(s:p)
