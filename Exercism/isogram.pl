/*
isogram(String).
	es cierto si String es un isograma excluyendo
	guiones y espacios en blanco.

*/



/*

quitar_blancos(Lista, R)
	es cierto si R unifica con una lista con los
	caracteres de Lista eliminando espacios en blanco
	y guiones.
	

*/

blanco(' ').
blanco('-').

quitar_blancos([], []).

quitar_blancos([Cab|Resto], R):- 
	quitar_blancos(Resto, R), blanco(Cab).
	
quitar_blancos([Cab|Resto], [Cab|R]):- 
	quitar_blancos(Resto, R), \+ blanco(Cab).	

/*

lower_case(Lista, R)

*/