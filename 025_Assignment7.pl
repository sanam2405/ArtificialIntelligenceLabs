female(sylvia).
female(ann).


male(jim).
male(brian).
male(keith).


parent(john,ann).
parent(jim,john).
parent(jim,keith).
parent(mary,ann).
parent(mary,sylvia).
parent(brian,sylvia).


uncle(X,Y) :-
	male(X),
	parent(ParentOfUncle,X),
	parent(ParentOfY,Y),
	parent(ParentOfUncle,ParentOfY),
	\=(ParentOfY,X).

halfSister(X,Y) :-
	female(X),
	parent(ParentOfX,X),
	parent(ParentOfX,Y),
	\=(X,Y).

