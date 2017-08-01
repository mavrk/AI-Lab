parent(anthony,harry).
parent(mary,hazel).
parent(anthony,hazel).
parent(mary,harry).
married(anthony,mary).
married(hazel,tom).
female(mary).
female(hazel).
male(anthony).
male(harry).
male(tom).
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
sibling(X,Y):- parent(Z,X), parent(Z,Y), not(X=Y).
sister(X,Y):- sibling(X,Y), female(X).
brother(X,Y):- sibling(X,Y), male(X).



