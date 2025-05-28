%fatos
cor(azul).
cor(verde).
cor(vermelho).

%regra coloração
coloração(A,B,C,D,E) :- cor(A), cor(B), cor(C), cor(D), cor(E),
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

%se ele não encontrar tal número N como par, ele será impar.
%caso esqueçamos de inserir um par (ex: par(10). o prolog dirá que 10 é impar).

%use par(felipe).
%use impar(felipe).
%use par(10).
%use impar(10).




