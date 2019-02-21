%consult('/Users/mr.blissfulgrin/Documents/UAH_2018_2019/RAZONAMIENTO/LAB/PECL1/exe.pl').
:-consult('./knoledge_base.pl').

akinator:-nl,write('Akinator!!!'), nl,nl,caracteristicas(Lista_caracteristicas),
    gameLoop(Lista_caracteristicas),
    nl,write('Game Over!!!'),nl,!.

gameLoop(Lista_caracteristicas):-question(Lista_caracteristicas),nl.

question(Lista_caracteristicas):-write('Su lenguaje '),[Cabeza|Cola]=Lista_caracteristicas,write($Cabeza),write('?'),read(Answer),write(Answer),gameLoop(Cola).
%validate(Lista_caracteristicas,Answer):-write(Answer),gameLoop(Lista_caracteristicas).

%Funci�n que devuelve una lista con todos los lenguajes
lenguajes(Y):- lenguajes_aux([], Y).
lenguajes_aux(Z,Y):- lenguaje(X1,_), not(member(X1,Z)), lenguajes_aux([X1|Z], Y), !.
lenguajes_aux(X,X).

%Funci�n que dada una caracteristica y su satisfaci�n, devuelve una lista de los
%lenguajes que la cumplen
%lenguajesCar (X,I,Y):-lenguajesCar_aux(X, I, Y, []).
%lenguajesCar_aux (X,I,Y,Z):-

%Funcione que obtiene una pregunta dado un indice
obtenerPregunta(I, X):-caracteristicas(L), nth1(I, L, X).

%Funcion para contar caracteristicas

%Funcion para generar vector con tantos 0 como caract hay

%Dado un indice y una lista, pone dicho elemento a 1
