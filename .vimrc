set nocompatible
set hlsearch
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
"set autoindent
set cursorline
syntax enable
set helplang=ja,en

" Clang-Format
if has('python')
  map <C-K> :pyf /usr/local/bin/clang-format.py<cr>
  imap <C-K> <c-o>:pyf /usr/local/bin/clang-format.py<cr>
elseif has('python3')
  map <C-K> :py3f /usr/local/bin/clang-format.py<cr>
  imap <C-K> <c-o>:py3f /usr/local/bin/clang-format.py<cr>
endif

" 42 Header
let g:user42 = 'yshimoda'
let g:mail42 = 'yshimoda@student.42tokyo.jp'

" Snippet
" Cpp
" for
autocmd FileType cpp iabbrev <buffer> inoremap ,for   <Esc>:-1read ~/.vim/alias/cpp/cpp_for.txt<CR>V1j=o<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,for1  <Esc>:-1read ~/.vim/alias/cpp/cpp_for1.txt<CR>V1j=o<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,for2  <Esc>:-1read ~/.vim/alias/cpp/cpp_for2.txt<CR>V3j=1jo<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,for3  <Esc>:-1read ~/.vim/alias/cpp/cpp_for3.txt<CR>V5j=2jo<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,for4  <Esc>:-1read ~/.vim/alias/cpp/cpp_for4.txt<CR>V7j=3jo<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,forr  <Esc>:-1read ~/.vim/alias/cpp/cpp_forr.txt<CR>V1j=o<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,forr  <Esc>:-1read ~/.vim/alias/cpp/cpp_forr.txt<CR>V1j=o<Tab>
autocmd FileType cpp iabbrev <buffer> inoremap ,forr1 <Esc>:-1read ~/.vim/alias/cpp/cpp_forr1.txt<CR>V1j=o<Tab>

" Snippet
" " cpp
" " " cin cout
autocmd FileType cpp iabbrev <buffer> cin		std::cin >> ;<Esc>h
autocmd FileType cpp iabbrev <buffer> cout		std::cout <<  << std::endl;<Esc>bbbbhh
autocmd FileType cpp iabbrev <buffer> cerr		std::cerr <<  << std::endl;<Esc>bbbbhh
autocmd FileType cpp iabbrev <buffer> couty		std::cout << "Yes" << std::endl;<Esc>
autocmd FileType cpp iabbrev <buffer> coutn		std::cout << "No" << std::endl;<Esc>
autocmd FileType cpp iabbrev <buffer> coutt		std::cout << "Takahashi" << std::endl;<Esc>
autocmd FileType cpp iabbrev <buffer> couta		std::cout << "Aoki" << std::endl;<Esc>
autocmd FileType cpp iabbrev <buffer> coutd		std::cout << "Draw" << std::endl;<Esc>

" " " " class
" autocmd FileType cpp iabbrev <buffer> class		class  {<CR>};<Esc>O	public:<CR>private:<Esc>kkhh

" " " for
autocmd FileType cpp iabbrev <buffer> for		for (std::size_t i = 0; i < n; i++) {<CR>}<Esc>O	<Esc>$
autocmd FileType cpp iabbrev <buffer> for1		for (std::size_t i = 0; i < n; i++) {<CR>}<Esc>O	<Esc>$
autocmd FileType cpp iabbrev <buffer> for2		for (std::size_t i = 0; i < n; i++) {<CR>}<Esc>O	for (std::size_t j = 0; j < n; j++) {<CR>}<Esc>O	<Esc>$
autocmd FileType cpp iabbrev <buffer> for3		for (std::size_t i = 0; i < n; i++) {<CR>}<Esc>O	for (std::size_t j = 0; j < n; j++) {<CR>}<Esc>O	for (std::size_t k = 0; k < n; k++) {<CR>}<Esc>O	<Esc>$
autocmd FileType cpp iabbrev <buffer> for4		for (std::size_t i = 0; i < n; i++) {<CR>}<Esc>O	for (std::size_t j = 0; j < n; j++) {<CR>}<Esc>O	for (std::size_t k = 0; k < n; k++) {<CR>}<Esc>O	for (std::size_t l = 0; l < n; l++) {<CR>}<Esc>O	<Esc>$
autocmd FileType cpp iabbrev <buffer> forr		for (std::size_t i = n - 1; i >= 0; i--) {<CR>}<Esc>O	<Esc>$

" " " function
autocmd FileType cpp iabbrev <buffer> func		int	func() {<CR>}<Esc>/(<CR>N

" " " if
autocmd FileType cpp iabbrev <buffer> if		if () {<CR>}<Esc>kw
autocmd FileType cpp iabbrev <buffer> ifel		if () {<CR>} else {<CR>}<Esc>kkw
autocmd FileType cpp iabbrev <buffer> ifelif	if () {<CR>} else if () {<CR>} else {<CR>}<Esc>kkkw
autocmd FileType cpp iabbrev <buffer> elif		else if () {<CR>}<Esc>kww
autocmd FileType cpp iabbrev <buffer> else		else {<CR>}<Esc>O<TAB><Esc>

" " " int
autocmd FileType cpp iabbrev <buffer> i0		i = 0;<Esc>
autocmd FileType cpp iabbrev <buffer> ii0		int	i = 0;<Esc>

" " " main
autocmd FileType cpp iabbrev <buffer> atmain	#include <iostream><CR>using namespace std;<CR><CR>int	main(void) {<CR>	int	n, m;<CR>int a, b, c, d, e, f;<CR>int	ans = 0;<CR>string	s, t;<CR><CR>cin >> n;<CR><CR>return (0);<CR><Esc>i}<Esc>kki	<Esc>$

" " " return 
autocmd FileType cpp iabbrev <buffer> re0		return (0);<Esc>
autocmd FileType cpp iabbrev <buffer> re1		return (1);<Esc>
autocmd FileType cpp iabbrev <buffer> ref		return (false);<Esc>
autocmd FileType cpp iabbrev <buffer> refalse	return (false);<Esc>
autocmd FileType cpp iabbrev <buffer> ren		return (NULL);<Esc>
autocmd FileType cpp iabbrev <buffer> renull	return (NULL);<Esc>
autocmd FileType cpp iabbrev <buffer> ret		return (true);<Esc>
autocmd FileType cpp iabbrev <buffer> retrue	return (true);<Esc>
autocmd FileType cpp iabbrev <buffer> rev		return ;<Esc>
autocmd FileType cpp iabbrev <buffer> revoid	return ;<Esc>

""" try catch
autocmd FileType cpp iabbrev <buffer> catch   catch () {<CR>}<Esc>kww
autocmd FileType cpp iabbrev <buffer> try     try {<CR>} catch () {<CR>}<Esc>kO<TAB><Esc>

" " " while
autocmd FileType cpp iabbrev <buffer> while		while () {<CR>}<Esc>kw
autocmd FileType cpp iabbrev <buffer> while2	while () {<CR>}<Esc>O	while () {<CR>}<Esc>kkw

" " " brackets
" autocmd FileType cpp iabbrev <buffer> [		[]<Esc>h
" autocmd FileType cpp iabbrev <buffer> {		{<CR>}<Esc>O	<Esc>$

" macro
" let @f="ifor (size_t i = 0; i < count; i++) <CR>{<CR>}<Esc>O	"

