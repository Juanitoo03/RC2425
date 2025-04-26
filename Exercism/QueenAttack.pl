%! create(+DimTuple)
%
% The create/1 predicate succeeds if the DimTuple contains valid chessboard 
% dimensions, e.g. (0,0) or (2,4).
create((DimX, DimY)) :-
    between(0, 7, DimX),
    between(0, 7, DimY).
	
%! attack(+FromTuple, +ToTuple)
%
% The attack/2 predicate succeeds if a queen positioned on ToTuple is 
% vulnerable to an attack by another queen positioned on FromTuple.

same_row((_, Y), (_, Y)).
same_col((X, _), (X, _)).
same_diag((X, Y), (X2, Y2)):- abs(X - X2) =:= abs(Y - Y2).

attack(P1, P2):- same_row(P1, P2).
attack(P1, P2):- same_col(P1, P2).
attack(P1, P2):- same_diag(P1, P2).
