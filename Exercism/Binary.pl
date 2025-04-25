/*

binary(Str, Dec).

*/

binary(Str, Dec):- string_chars(Str, List),
	maplist(binary, List), char2dec(List, Dec).
	
/*
char2dec(List, Dec).
*/

char2dec([], 0).

char2dec([Head|Tail], R):-
	char2dec(Tail, Dec),
	number_chars(N, [Head]), length(Tail, L), R is Dec + N * 2 ^ L.

binary('0').
binary('1').
