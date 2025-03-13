
/*
elemento_n(+Lista, +N, -R)
  es cierto cuando R unifica con el elemento de Lista
  que ocupa la posición N empezando a contar en 1.
  
  Inducción
  1) P(n0)
  2) P(n-1) -> P(n)
  
*/

elemento_n([Cab|_], 1, cab).

elemento_n([Cab|Resto], N, R):- 
  N2 is N-1,
  elemento_n(Resto, N2, R),