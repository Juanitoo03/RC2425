
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
