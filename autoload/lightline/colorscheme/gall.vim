let s:black = [ '', 0 ]
let s:gray  = [ '', 8 ]
let s:white = [ '', 15 ]

let s:red     = [ '', 1 ]
let s:green   = [ '', 2 ]
let s:yellow  = [ '', 3 ]
let s:blue    = [ '', 4 ]
let s:magenta = [ '', 5 ]
let s:cyan    = [ '', 6 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left  = [ [ s:black, s:magenta ], [ s:cyan, s:black ] ]
let s:p.normal.right = [ [ s:black, s:magenta ], [ s:black, s:cyan ] ]

let s:p.inactive.right = [ [ s:black, s:black ], [ s:white, s:black ] ]
let s:p.inactive.left  = [ [ s:cyan,  s:black ], [ s:white, s:black ] ]

let s:p.insert.left  = [ [ s:black, s:green ], [ s:cyan, s:black ] ]
let s:p.replace.left = [ [ s:black, s:red ],   [ s:cyan, s:black ] ]
let s:p.visual.left  = [ [ s:black, s:blue ],  [ s:cyan, s:black ] ]

let s:p.normal.middle   = [ [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:gray,  s:black ] ]

let s:p.tabline.left   = [ [ s:black, s:green ] ]
let s:p.tabline.tabsel = [ [ s:white, s:blue ] ]
let s:p.tabline.middle = [ [ s:black, s:black ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let s:p.normal.error   = [ [ s:red,    s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let g:lightline#colorscheme#gall#palette = lightline#colorscheme#flatten(s:p)
