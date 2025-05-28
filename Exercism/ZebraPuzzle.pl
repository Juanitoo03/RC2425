:- use_module(library(clpfd)).
:- use_module(library(pairs)).

zebra_owner(Owner):- solution(Pairs, _, Zebra, Vs), label(Vs), member(Zebra-Owner, Pairs).
water_drinker(Drinker):- solution(Pairs, Water, _, Vs), label(Vs), member(Water-Drinker, Pairs).

solution(Pairs, Water, Zebra, Vs) :-
  Table = [Houses,Nations,Drinks,Actions,Animals],
  Houses = [Red,Green,Yellow,Blue,Ivory],
  Nations = [England,Spain,Ukraine,Norway,Japan],
  Names   = [englishman,spaniard,ukrainian,norwegian,japanese],
  Drinks  = [Coffee,Milk,OrangeJuice,Tea,Water],
  Actions = [Dance, Read, Paint, Chess, Soccer],
  Animals = [Dog, Snails, Horse, Fox, Zebra],
  pairs_keys_values(Pairs, Nations, Names),
  maplist(all_distinct, Table),
  append(Table, Vs),
  Vs ins 1..5,
  England #= Red,
  Spain #= Dog,
  Coffee #= Green,
  Green #= Ivory + 1,
  Dance #= Snails,
  Paint #= Yellow,
  Milk #= 3,
  Norway #= 1,
  next_to(Read, Fox),
  next_to(Paint, Horse),
  Soccer #= OrangeJuice,
  Japan #= Chess,
  next_to(Norway, Blue).
        
next_to(H, N) :- abs(H-N) #= 1.
