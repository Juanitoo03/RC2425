leap(A):- div4(A).
leap(A):- div100(A).

div4(A):- N is A/4, N = 0.

div100(A):- N is A mod 100, N=0, div400(0).

div400(A):- N is A mod 400, N=0.
