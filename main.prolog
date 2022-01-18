%estado: [Y , 1 , 2 , 3 , 4 , 5 , 6 ]
%Azul (Blue) - b
%Vermelho (Red) - r
%Verde (Green) - g
%Amarelo (Yellow) - y
%Rosa (Pink) - p
%Laranja (Orange) - o

objetivo([24 , [b,b,b,b] , [r,r,r,r] , [g,g,g,g] , [y,y,y,y] , [p,p,p,p] , [o,o,o,o]]).

%       O3 O4
%       O2 O1
% G4 G1 B1 B2 Y2 Y3
% G3 G2 B4 B3 Y1 Y4
%       P1 P2
%       P4 P3
%       R1 R2
%       R4 R3

%s([B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]).

% GIRO DA DIREITA

%       O3 R2
%       O2 R3
% G4 G1 B1 O4 Y3 Y4
% G3 G2 B4 O1 Y2 Y1
%       P1 B2
%       P4 B3
%       R1 P2
%       R4 P3

% [B1,O4,O1,B4] , [R1,P2,P3,R4] , [G1,G2,G3,G4] , [Y2,Y3,Y4,Y1] , [P1,B2,B3,P4] , [R3,O2,O3,R2]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[B1,O4,O1,B4],[R1,P2,P3,R4],[G1,G2,G3,G4],[Y2,Y3,Y4,Y1],[P1,B2,B3,P4],[R3,O2,O3,R2]]).

% GIRO DA ESQUERDA

%       R1 O4
%       R4 O1
% G3 G4 O3 B2 Y2 Y3
% G2 G1 O2 B3 Y1 Y4
%       B1 P2
%       B4 P3
%       P1 R2
%       P4 R3

% [O3,B2,B3,O2] , [P1,R2,R3,P4] , [G4,G1,G2,G3] , [Y1,Y2,Y3,Y4] , [B1,P2,P3,B4] , [O1,R4,R1,O4]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[O3,B2,B3,O2],[P1,R2,R3,P4],[G4,G1,G2,G3],[Y1,Y2,Y3,Y4],[B1,P2,P3,B4],[O1,R4,R1,O4]]).

% GIRO DE CIMA

%       O4 O1
%       O3 O2
% R4 R3 G4 G1 B1 B2
% G3 G2 B4 B3 Y1 Y4
%       P1 P2
%       P4 P3
%       R1 R2
%       Y2 Y3

% [G4,G1,B3,B4] , [R1,R2,Y3,Y2] , [R3,G2,G3,R4] , [Y1,B1,B2,Y4] , [P1,P2,P3,P4] , [O2,O3,O4,O1]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[G4,G1,B3,B4],[R1,R2,Y3,Y2],[R3,G2,G3,R4],[Y1,B1,B2,Y4],[P1,P2,P3,P4],[O2,O3,O4,O1]]).

% GIRO DE BAIXO

%       O3 O4
%       O2 O1
% G4 G1 B1 B2 Y2 Y3
% R1 R2 G2 G3 B4 B3
%       P4 P1
%       P3 P2
%       Y1 Y4
%       R4 R3

% [B1,B2,G3,G2] , [Y1,Y4,R3,R4] , [G1,R2,R1,G4] , [B4,Y2,Y3,B3] , [P4,P1,P2,P3] , [O1,O2,O3,O4]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[B1,B2,G3,G2],[Y1,Y4,R3,R4],[G1,R2,R1,G4],[B4,Y2,Y3,B3],[P4,P1,P2,P3],[O1,O2,O3,O4]]).

% GIRO FRENTE

%       O3 O4
%       G2 G1
% G4 P1 B4 B1 O2 Y3
% G3 P2 B3 B2 O1 Y4
%       Y1 Y2
%       P4 P3
%       R1 R2
%       R4 R3

% [B4,B1,B2,B3] , [R1,R2,R3,R4] , [P1,P2,G3,G4] , [O1,O2,Y3,Y4] , [Y1,Y2,P3,P4] , [G1,G2,O3,O4]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[B4,B1,B2,B3],[R1,R2,R3,R4],[P1,P2,G3,G4],[O1,O2,Y3,Y4],[Y1,Y2,P3,P4],[G1,G2,O3,O4]]).

% GIRO TRAS

%       G3 G4
%       O2 O1
% P4 G1 B1 B2 Y2 O3
% P3 G2 B4 B3 Y1 O4
%       P1 P2
%       Y4 Y3
%       R4 R1
%       R3 R2

% [B1,B2,B3,B4] , [R4,R1,R2,R3] , [G1,G2,P3,P4] , [Y1,Y2,O3,O4] , [P1,P2,Y3,Y4] , [O1,O2,G3,G4]
s([[B1,B2,B3,B4],[R1,R2,R3,R4],[G1,G2,G3,G4],[Y1,Y2,Y3,Y4],[P1,P2,P3,P4],[O1,O2,O3,O4]],[[B1,B2,B3,B4],[R4,R1,R2,R3],[G1,G2,P3,P4],[Y1,Y2,O3,O4],[P1,P2,Y3,Y4],[O1,O2,G3,G4]]).


% Mudança de estado: Considere um estado como o a seguir: 
%[[b,b, o,o] , [r,r, b,b] , [g,g, r,r] , [y,y, g,g] , [p,p, y,y] , [o,o, p,p]]
%
%Implemente a heurística h do estado S2, associando os valores a cada valor da face conforme os slides, via implementação da relação sH/2:
sH(4,[B1,B2,B3,B4]).
sH(3,[B1,B2,B3,O1]).
sH(2,[B1,B2,O1,R1]).
sH(0,[X1,X2,Y1,Y2]).

verificaValorEstado([], Solucao).
verificaValorEstado([Lado|Estados], Solucao):-
    resultadoEstado(Lado,Solucao1),
    verificaValorEstado(Estados, Solucao1).

resultadoEstado([], Solucao).
resultadoEstado(Lado, [Valor|Lados]):-
    sH(X, Lado),
    soma(X,Valor,Resultado),
    resultadoEstado([],[Resultado|Lado])

    sNaoDirigido(X,Y):-
    sG(_,X,Y).

estendeH([_,No|Caminho],NovosCaminhos) :-
        findall([HN,NovoNo,No|Caminho],
      (
              sNaoDirigido(No,NovoNo),  
              sH(HN,NovoNo),
        not(member(NovoNo,[No|Caminho]))
      ),
      NovosCaminhos
        ).

%maiorGouH - é verdadeiro quando a heurística da primeira lista é maior que a da segunda
maiorGouH([GouH1|],[GouH2|]) :- GouH1 > GouH2.

%particionarGouH - particiona a lista no maior elemento - base do algoritmo Quicksort para ordenação
particionarGouH(_,[],[],[]).
particionarGouH(X,[Y|Cauda],[Y|Menor],Maior):-
        maiorGouH(X,Y),!,
        particionarGouH(X,Cauda,Menor,Maior).
particionarGouH(X,[Y|Cauda],Menor,[Y|Maior]):-
        particionarGouH(X,Cauda,Menor,Maior).

%quicksortGouH - Algoritmo Quicksort para ordenação de uma lista de caminhos usando somente
quicksortGouH([],[]).
quicksortGouH([X|Cauda],ListaOrd):-
        particionarGouH(X,Cauda,Menor,Maior),
        quicksortGouH(Menor,MenorOrd),
        quicksortGouH(Maior,MaiorOrd),
        append(MenorOrd,[X|MaiorOrd],ListaOrd).

%ordenaGouH - algoritmo de ordenação que usa a informação heurística de custo ou de avaliação
ordenaGouH(Caminhos,CaminhosOrd):-
        quicksortGouH(Caminhos,CaminhosOrd).

% Algoritmo Hill Climbing
hillClimb([[,No|Caminho]|],Solucao) :-
        objetivo(No),
        reverse([No|Caminho],Solucao).
hillClimb([Caminho|Caminhos], Solucao) :-
        estendeH(Caminho, Caminhos1),
        ordenaGouH(Caminhos1, Caminhos1Ord), %observar que a ordenação é somente da lista estendida
        append(Caminhos1Ord, Caminhos, Caminhos2), %observar que o append é na cabeça da lista e não no final
        hillClimb(Caminhos2, Solucao).

%função de avaliação e estratégia de busca baseada em profundidade / busca local
busca('hillClimb',NoInicial,Caminho):-
    hillClimb([[_,NoInicial]],Caminho).


