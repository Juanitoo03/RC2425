:- use_module(library(clpfd)).

sum_of_multiples(Factors, Limit, Sum):-
 sum_of_multiples_list(Factors, Limit, R),
 sort(R, R2),
 delete(R2, Limit, R3),
 sum_list(R3, Sum).
 
sum_of_multiples_list([], _, []).
sum_of_multiples_list([Head|Tail], Limit, R):-
 max_n(Head, Limit, Max),
 factors_list(Head, Max, RHead),
 sum_of_multiples_list(Tail, Limit, RTail),
 append(RHead, RTail, R).

max_n(Factor, Limit, R):- Limit #= Factor * R.
max_n(Factor, Limit, R):- Limit #>= Factor * R, R * Factor #>= Limit - Factor.

factors_list(_, 0, []).
factors_list(Factor, 1, [Factor]).
factors_list(Factor, N, [RHead|R]):- N > 1,
  N2 is N - 1, 
  factors_list(Factor, N2, R),
  RHead is N * Factor.
