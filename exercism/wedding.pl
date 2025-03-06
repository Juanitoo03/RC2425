
chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% a -> b, b:- a.
pairing(A, B):- chatty(A), A \= B.
pairing(B, A):- chatty(A), A \= B.

% a & b -> c, c:- a, b.
pairing(A, B):- likes(A,B), likes(B,A), A \= B.

seating(A, B, C, D ,E):- pairing(A,B), pairing(B,C), pairing(C,D), pairing(D,E).

/*
all_dif(Lista)
 es cierto si todos los elementos de Lista son diferentes.

Inducción:
1) P(n0)
2) Para todo n > n0, P(n-1) -> P(n)

Para conseguir el n-1 en Lista utilizamos el operador "|"
*/

all_dif([]).
all_dif([Cab|Resto]):- all_dif(Resto), maplist(dif(Cab), Resto).
