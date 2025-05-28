:- use_module(library(clpfd)).

combinations(Size, Sum, Exclude, R3):- setof(R, combinations2(Size, Sum, _, R), R2), 
  filter_all(Exclude, R2, R3).

combinations2(Size, Sum, _, List):- length(List, Size), 
  List ins 1..Sum,
  all_distinct(List),
  label(List), my_sum_list(List, Sum).

filter_all([], List, List).  
 
filter_all([Head|Tail], List, R2):-
 filter_all(Tail, List, R),
 my_filter(Head, R, R2).
  
my_filter(_, [], []).

my_filter(E, [Head|Tail], [Head|R]):-
  \+ memberchk(E, Head),
  my_filter(E, Tail, R).

my_filter(E, [Head|Tail], R):-
  memberchk(E, Head),
  my_filter(E, Tail, R).

my_sum_list([], 0).
my_sum_list([Head|Tail], R2):-
 my_sum_list(Tail, R),
 R2 #= Head + R.
