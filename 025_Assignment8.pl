store(best_smoothies, [alan, john, mary],
[ smoothie(berry, [orange, blueberry, strawberry], 2),
  smoothie(tropical, [orange, banana, mango, guava], 3),
  smoothie(blue, [banana, blueberry], 3) ]).

store(all_smoothies, [keith,mary],
      [ smoothie(pinacolada, [orange, pineapple, coconut], 2),
        smoothie(green, [orange, banana, kiwi], 5),
        smoothie(purple, [orange, blueberry, strawberry], 2),
        smoothie(smooth, [orange, banana, mango],1) ]).

store(smoothies_galore, [heath,john,michelle],
      [ smoothie(combo1, [strawberry, orange, banana], 2),
        smoothie(combo2, [banana, orange], 5),
        smoothie(combo3, [orange, peach, banana], 2),
        smoothie(combo4, [guava, mango, papaya, orange],1),
        smoothie(combo5, [grapefruit, banana, pear],1) ]).

member1(X,[smoothie(_,X,_)|_]).
member1(X,[_|T]):-member1(X,T).

member0(X,[X|_]).
member0(X,[_|T]):-member0(X,T).

member(X,[smoothie(X,_,_)|_]).
member(X,[_|T]):-member(X,T).

size([],0).
size([_|T],N):-size(T,N1),N is N1+1.

sumlist([],0).
sumlist([smoothie(_,_,H)|T],N):- sumlist(T,N1),N is N1+H.

/*question1*/
more_than_four(X):-store(X,_,Y),size(Y,N),(N>4).

/*question2*/
exists(X):- store(_,_,Y),member(X,Y).

/*question3*/
ratio(X,R):- store(X,Y,Z),size(Y,A),size(Z,B),A/B=R.

/*question4*/
average(X,A):- store(X,_,Y), sumlist(Y,N1),size(Y,N2),N1/N2=A.

/*question5*/
smoothies_in_store(X,L):-store(X,_,Y),member(L,Y).

/*question6*/
 isavl(F,Y):- member1(A,Y),member0(F,A).
 fruit_in_all_smoothies(X,F):-store(X,_,Y),isavl(F,Y).

