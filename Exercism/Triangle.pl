triangle(A, B, C, T):- check_sum_restriction(A, B, C), 
  triangle2(A, B, C, T).

triangle2(A, B, C, "equilateral"):-
 A = B, B = C, A \= 0.

triangle2(A, B, C, "isosceles"):-
 A = B, B = C, A \= 0.
triangle2(A,B,C, "isosceles"):- 
 A=B, B \= C.

triangle2(A,B,C, "isosceles"):- 
 A=C, B \= C.

triangle2(A,B,C, "isosceles"):- 
 B=C, A \= C.

triangle2(A,B,C, "scalene"):- 
  A \= B , B\= C , A \= C.

check_sum_restriction(A, B, C):- R1 is A + B, R1 >= C, R2 is B + C, R2 >= A, R3 is A + C, R3 >= B. 
