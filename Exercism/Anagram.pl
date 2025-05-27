anagram(_, [], []).

anagram(Word, [Head | Tail], [Head | R]) :-
    is_anagram(Word, Head),
    anagram(Word, Tail, R).

anagram(Word, [Head | Tail], R) :-
    \+ is_anagram(Word, Head),
    anagram(Word, Tail, R).

is_anagram(Str1, Str2) :-
    string_lower(Str1, LowerStr1), string_lower(Str2, LowerStr2),
    string_chars(LowerStr1, Word1), string_chars(LowerStr2, Word2),
    length(Word1, L), length(Word2, L),
    permutation(Word1, Word2),
    Word1 \= Word2.
