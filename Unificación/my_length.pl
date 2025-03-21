/* 
Unificación

Dos términos unifican si:

1. (No hay variables libres) unifican si los términos son idénticos.

my_length(List, Num)
  es cierto si Num unifica con el número de elementos de List.

Inducción
1. P(n0) es cierta.
2. P(n-1) -> P(n).

P( "N" ):- P( "N-1" ).

*/

my_length([], 0).
my_length([_|Resto], R2):- 
  my_length(Resto, R), R2 is R + 1.
