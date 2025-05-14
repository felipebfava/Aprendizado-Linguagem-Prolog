
homem(jim).
homem(tom).
homem(bob).
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).

genitor(pam,bob). %mae do bob
genitor(tom,bob). %pai do bob
genitor(tom,liz).
genitor(bob,ann). %filhos do bob
genitor(bob,pat). %filhos do bob
genitor(pat,jim).

alguem_tem_filho(X) :- genitor( , ).
pais_ann(X) :- genitor(X,ann).

prole(Y,X) :- genitor(X,Y). %quem é filho de quem
prole(Y,bob) :- genitor(tom,Y). %quem é filho de bob

%Regra para irmãs, substituindo as letras por nomes segundo a árvore
irmã(X,Y):- genitor(Z,X),genitor(Z,Y),mulher(Y),(X\=Y).

%Exemplo:
irmã(pat,ann):- genitor(bob,pat).
irmã(pat,ann):- genitor(bob,ann).
irmã(pat,ann):- mulher(ann).
irmã(pat,ann):- (pat\=ann).

%Regra para irmão, substituindo as letras por nomes segundo a árvore
irmão(X,Y):- genitor(Z,X),genitor(Z,Y),homem(Y),(X\=Y).

%Exemplo:
irmão(bob,liz):- genitor(tom,bob), genitor(tom,liz), homem(bob), (bob\=liz).

%Regra para irmãos, substituindo as letras por nomes segundo a árvore
irmãos(X,Y):- genitor(Z,X),genitor(Z,Y),(X\=Y).

%Regra para avô, substituindo as letras por nomes segundo a árvore
avô(X,Z):- genitor(X,Y), genitor(Y,Z), homem(X).

%Regra para avó, substituindo as letras por nomes segundo a árvore
avó(X,Z):- genitor(X,Y), genitor(Y,Z), mulher(X).

%Regra para avós, substituindo as letras por nomes segundo a árvore
avós(X,Z):- genitor(X,Y), genitor(Y,Z).

%Regra para neto, substituindo as letras por nomes segundo a árvore
neto(X,Z):- avós(Z,X), homem(X).

%Regra para neta, substituindo as letras por nomes segundo a árvore
neta(X,Z):- avós(Z,X), mulher(X).

%Regra para netos, substituindo as letras por nomes segundo a árvore
netos(X,Z):- avós(Z,X).

%Regra para tio, substituindo as letras por nomes segundo a árvore
tio(X,Y):- irmãos(X,P),genitor(P,Y),homem(X).

%Regra para tia, substituindo as letras por nomes segundo a árvore
tio(X,Y):- irmãos(X,P),genitor(P,Y),mulher(X).

