/*

comprime(Lista, R)
  es cierto si R unifica con una Lista
  de la siguiente forma:
	
  comprime([a,a,a,b,b,c,a,a], R).
  R=[(a,3),(b,2),(c,1),(a,2)].
  
*/

comprime([], []).

comprime([Elem], [(Elem, 1)]).

comprime([Cab1, Cab1|Resto], ):- comprime(Cab1|Resto, R).
