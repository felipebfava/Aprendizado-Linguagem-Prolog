%fatos
cor(azul).
cor(verde).
cor(vermelho).

%regra colora��o
colora��o(A,B,C,D,E) :- cor(A), cor(B), cor(C), cor(D), cor(E),
                     A\=B,A\=C,A\=D,
                     B\=C,B\=E,B\=A,
                     C\=D,C\=E,
                     D\=E.

% A\=B - A DIFERENTE DE B

%pares
par(8).
par(4).
par(felipe).

%regra
impar(N):- \+par(N).

%se ele n�o encontrar tal n�mero N como par, ele ser� impar.
%caso esque�amos de inserir um par (ex: par(10). o prolog dir� que 10 � impar).

%use par(felipe).
%use impar(felipe).
%use par(10).
%use impar(10).




