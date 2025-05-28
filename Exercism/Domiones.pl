can_chain(List):- path(List, A, A, _). 
  
connect(A,B, List, R):- member((A,B), List), 
  append(L1, [(A,B)|L2], List),
  append(L1, L2, R).
connect(A,B, List, R):- member((B,A), List), 
  append(L1, [(B,A)|L2], List),
  append(L1, L2, R).

path([], _, _, []). 
path(List, A, B, [(A,TMP)|R]):- length(List, L),
  connect(A, TMP, List, Rest), path(Rest, TMP, B, R), L2 is L - 1, 
  length(R,L2), append(_, [(_,B)], R).
