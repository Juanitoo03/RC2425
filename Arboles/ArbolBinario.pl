/*

lista_hojas(+Arbol_binario, ?Lista_hojas)
es cierto cuando Lista_hojas unifica con una lista que contiene
las etiquetas de las hoas del árbol "Arbol_binario"

Principio de Inducción Matemática

1) P(n0)
2) n > n0, P(n-1) -> P(n)

*/

lista_hojas(nil, []).

lista_hojas(A, [Et]):- hoja(A), etiqueta(A, Et).

lista_hojas(A, R):- \+ hoja(A),
	A = a(_, AI, AD),
	lista_hojas(AI, RI),
	lista_hojas(AD, RD),
	append(RI, RD, R).

hoja(a(_, nil, nil)).

eiqueta(a(Et, _, _), Et).
