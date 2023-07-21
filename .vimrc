set nocompatible
set hlsearch
set number
set relativenumber
set tabstop=4
set autoindent
set cursorline
syntax enable

" 42 Header
let g:user42 = 'yshimoda'
let g:mail42 = 'yshimoda@student.42tokyo.jp'

" Snippet
" " cpp
" " " cin cout
autocmd FileType cpp iabbrev <buffer> cin		cin >> ;h
autocmd FileType cpp iabbrev <buffer> cout		cout <<  << endl;bbhh
autocmd FileType cpp iabbrev <buffer> couty		cout << "Yes" << endl;
autocmd FileType cpp iabbrev <buffer> coutn		cout << "No" << endl;

" " " for
autocmd FileType cpp iabbrev <buffer> for		for (int i = 0; i < n; i++) {}O	$
autocmd FileType cpp iabbrev <buffer> for1		for (int i = 0; i < n; i++) {}O	$
autocmd FileType cpp iabbrev <buffer> for2		for (int i = 0; i < n; i++) {}O	for (int j = 0; j < n; j++) {}O	$
autocmd FileType cpp iabbrev <buffer> for3		for (int i = 0; i < n; i++) {}O	for (int j = 0; j < n; j++) {}O	for (int k = 0; k < n; k++) {}O	$

" " " if
autocmd FileType cpp iabbrev <buffer> if		if () {}?(
autocmd FileType cpp iabbrev <buffer> ifel		if () {} else {}?(
autocmd FileType cpp iabbrev <buffer> ifelif	if () {} else if () {} else {}?(n
autocmd FileType cpp iabbrev <buffer> elif		else if () {}?(

" " " int
autocmd FileType cpp iabbrev <buffer> i0		i = 0;
autocmd FileType cpp iabbrev <buffer> ii0		int	i = 0;

" " " main
autocmd FileType cpp iabbrev <buffer> atmain	#include <iostream>using namespace std;int	main(void) {	int	n, a, b;string	s;cin >> n;return (0);i}kki	$

" " " return 
autocmd FileType cpp iabbrev <buffer> re0		return (0);
autocmd FileType cpp iabbrev <buffer> re1		return (1);
autocmd FileType cpp iabbrev <buffer> renull	return (NULL);
autocmd FileType cpp iabbrev <buffer> revoid	return ;

" " " while
autocmd FileType cpp iabbrev <buffer> while		while () {}?(
autocmd FileType cpp iabbrev <buffer> while2	while () {}O	while () {}?(n

" " " brackets
" autocmd FileType cpp iabbrev <buffer> [		[]h
" autocmd FileType cpp iabbrev <buffer> {		{}O	$

" macro
" let @f="ifor (size_t i = 0; i < count; i++) {}O	"

