main:-
    TotalBouncys is 525,
    TotalNums is 999,
    AtualNum is 1000,
    calculaProp(AtualNum, TotalBouncys, TotalNums, Answer),
    writeln(Answer),
    halt.

increasing(N, RetornoI):-
    UltimoDigito is N mod 10,
    RestoNumero is N // 10,
    PenultimoDigito is RestoNumero mod 10, 
    (RestoNumero =:= 0 -> RetornoI is 1 ; 
	(UltimoDigito < PenultimoDigito -> RetornoI is 0 ; increasing(RestoNumero, RetornoI))).
    
decreasing(N, RetornoD):-
    UltimoDigito is N mod 10,
    RestoNumero is N // 10,
    PenultimoDigito is RestoNumero mod 10, 
    (RestoNumero =:= 0 -> RetornoD is 1 ; 
	(UltimoDigito > PenultimoDigito -> RetornoD is 0 ; decreasing(RestoNumero, RetornoD))).

ehBouncy(N, RetornoB):-
    increasing(N, RetornoI),
    decreasing(N, RetornoD),
    (RetornoI =:= 1 -> RetornoB is 0 ; (RetornoD =:= 1 -> RetornoB is 0 ; RetornoB is 1)).
    
calculaProp(AtualNum, TotalBouncys, TotalNums, Answer):-
    Proporcao is ((TotalBouncys * 100) // TotalNums),
    (Proporcao =:= 99 -> Answer is AtualNum - 1 ; 
    AuxAtual is AtualNum + 1, AuxBouncys is TotalBouncys + 1, AuxNums is TotalNums + 1,
    ehBouncy(AtualNum, RetornoB), 
    (RetornoB =:= 1 -> calculaProp(AuxAtual, AuxBouncys, AuxNums, Answer); 
    calculaProp(AuxAtual, TotalBouncys, AuxNums, Answer))).
    
:- main.