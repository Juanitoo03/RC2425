
ag1(
	a(1, [a(2, [a(5, [])]), a(3, []), a(4, [])])
).

/*

lista_hojas_ag(+Arbol_generico, ?Lista_hojas)
es cierto cuando Lista_hojas unifica con una lista que contiene
las etiquetas de las hoas del Arbol_generico

Principio de Inducción Matemática

1) P(n0)
2) n > n0, P(n-1) -> P(n)

*/

hoja(a(_, [])).

lista_hojas_ag(nil, []).

lista_hojas_ag(A, [Et]):- hoja(A), etiqueta(A, Et).

lista_hojas_ag(a(_, Lista_hijos), R):- \+ hoja(A),
	lista_hojas(Lista_hijos, R).

lista_hojas([], []).

lista_hojas([Cab|Resto], R),
	lista_hojas_ag(Cab, RCa),
	lista_hojas(Resto, RR),
	append(RCa, RR, R).
	
eiqueta(a(Et, _), Et).
