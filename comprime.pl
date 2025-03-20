/*

comprime(Lista, R)
  es cierto si R unifica con una Lista
  de la siguiente forma:
	
  comprime([a,a,a,b,b,c,a,a], R).
  R=[(a,3),(b,2),(c,1),(a,2)].

  vecesRepetido(Elem, Lista, N, R)
  Es cierto cuando R unifica con una lista que contiene
  los elementos de Lista, eliminando las repeticiones
  de Elem seguidas.

  N unifica con el numero de repeticiones consecutivas + 1.
  
*/

vecesRepetido(X, [Cab|Resto], 1, [Cab|Resto]:-
	X \= Cab.

vecesRepetido(_, [], 1, []).

vecesRepetido(X, [X|Resto], N, Resto2):-
	vecesRepetido(X, Resto, N1, Resto2), N is N1 + 1.
