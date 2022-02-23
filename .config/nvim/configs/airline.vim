let g:airline_powerline_fonts = 1

let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0

let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
let g:airline_section_b = airline#section#create_left(['%f'])
let g:airline_section_c = airline#section#create([' '])										" ffenc
let g:airline_section_x = airline#section#create(['filetype'])
let g:airline_section_y = airline#section#create(['ffenc'])
let g:airline_section_z = airline#section#create_right(['L: %l', 'C: %c'])

let g:airline_skip_empty_sections = 1

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

let g:airline_theme = "dark"
"let g:airline_left_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_sep = ''
