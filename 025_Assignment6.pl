parent(manas,manojit,manju).
parent(manasi,monotosh,bijali).
parent(debraj,deepak,archana).


likes(manas,biriyani).
likes(anumoy,leetcode).
likes(debargha, dishari).
likes(dishari, debargha).

mutual(X, Y) :-
    likes(X, Y),
    likes(Y, X).
