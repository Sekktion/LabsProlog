father(xoror�, junior).

father(xoror�, sandy).

father(chitaozinho, zeze).

father(junior, filhote).

father(zeze, luciano).



mother(noely, sandy).

mother(noely, junior).

mother(sandy, theo).

mother(noely, sabrina).

mother(sabrina, francesca).

mother(sabrina, paula).

mother(paula, sissi).



parent(X,Y) :- father(X,Y).

parent(X,Y) :- mother(X,Y).



grandfather(Avo, Neto) :- father(Avo, PaiMae), parent(PaiMae, Neto).

grandmother(X, Y) :- mother(X, Z), parent(Z, Y).





sings(junior).

sings(sandy).



happy(junior).

happy(sandy) :-

    sings(sandy).

happy(noely) :- mother(noely, sandy), happy(sandy).

happy(xoror�) :- father(xoror�, sandy), happy(sandy), sings(xoror�).

happy(xoror�) :- mother(noely, sandy), mother(noely, junior).
