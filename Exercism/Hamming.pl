hamming_distance(Str1, Str2, Dist) :-
    string_chars(Str1, L1),
    string_chars(Str2, L2),
    maplist(diff, L1, L2, Diff),
    sum_list(Diff, Dist).

    diff(C1, C2, D) :- 
        C1 = C2 -> D = 0; D = 1.
