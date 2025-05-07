% Exemplo de programa em Prolog que define
% fatos e regras sobre pessoas e localizacoes geograficas.

idade(andre, 25).
idade(jose, 30).
idade(marc, 28).
idade(maria, 32).
idade("maria josé", 32).
idade('Seu Madruga', 52).

nasceu_em(andre, santa_maria).
nasceu_em(jose, salvador).
nasceu_em(marc, paris).
nasceu_em(maria, porto_alegre).
nasceu_em("maria josé", porto_alegre).
nasceu_em('Seu Madruga', franca).

nasceu_em(X, rio_grande_do_sul) :- nasceu_em(X, santa_maria).
nasceu_em(X, rio_grande_do_sul) :- nasceu_em(X, porto_alegre).
nasceu_em(X, bahia) :- nasceu_em(X, salvador).
nasceu_em(X, franca) :- nasceu_em(X, paris).
nasceu_em(X, europa) :- nasceu_em(X, franca).
nasceu_em(X, brasil) :- nasceu_em(X, bahia).
nasceu_em(X, brasil) :- nasceu_em(X, rio_grande_do_sul).

gaucho(X) :- nasceu_em(X, rio_grande_do_sul).
brasileiro(X) :- nasceu_em(X, brasil).
europeu(X) :- nasceu_em(X, europa).
