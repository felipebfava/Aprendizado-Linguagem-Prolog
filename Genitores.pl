
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

prole(Y,X) :- genitor(X,Y). %quem � filho de quem
prole(Y,bob) :- genitor(tom,Y). %quem � filho de bob

%Regra para irm�s, substituindo as letras por nomes segundo a �rvore
irm�(X,Y):- genitor(Z,X),genitor(Z,Y),mulher(Y),(X\=Y).

%Exemplo:
irm�(pat,ann):- genitor(bob,pat).
irm�(pat,ann):- genitor(bob,ann).
irm�(pat,ann):- mulher(ann).
irm�(pat,ann):- (pat\=ann).

%Regra para irm�o, substituindo as letras por nomes segundo a �rvore
irm�o(X,Y):- genitor(Z,X),genitor(Z,Y),homem(Y),(X\=Y).

%Exemplo:
irm�o(bob,liz):- genitor(tom,bob), genitor(tom,liz), homem(bob), (bob\=liz).

%Regra para irm�os, substituindo as letras por nomes segundo a �rvore
irm�os(X,Y):- genitor(Z,X),genitor(Z,Y),(X\=Y).

%Regra para av�, substituindo as letras por nomes segundo a �rvore
av�(X,Z):- genitor(X,Y), genitor(Y,Z), homem(X).

%Regra para av�, substituindo as letras por nomes segundo a �rvore
av�(X,Z):- genitor(X,Y), genitor(Y,Z), mulher(X).

%Regra para av�s, substituindo as letras por nomes segundo a �rvore
av�s(X,Z):- genitor(X,Y), genitor(Y,Z).

%Regra para neto, substituindo as letras por nomes segundo a �rvore
neto(X,Z):- av�s(Z,X), homem(X).

%Regra para neta, substituindo as letras por nomes segundo a �rvore
neta(X,Z):- av�s(Z,X), mulher(X).

%Regra para netos, substituindo as letras por nomes segundo a �rvore
netos(X,Z):- av�s(Z,X).

%Regra para tio, substituindo as letras por nomes segundo a �rvore
tio(X,Y):- irm�os(X,P),genitor(P,Y),homem(X).

%Regra para tia, substituindo as letras por nomes segundo a �rvore
tio(X,Y):- irm�os(X,P),genitor(P,Y),mulher(X).

