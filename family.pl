parent(pam, bob).
parent(tom, bob).
parent(bob, ann).
parent(tom, liz).
parent(pat, jim).
parent(bob,pat).
parent(liz, jon).
female(pam).
female(pat).
female(ann).
female(liz).
male(jim).
male(bob).
male(tom).
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
grandmother(X,Z):- parent(X,Y), parent(Y,Z), female(X).
grandmother(X,Z):- parent(X,Y), parent(Y,Z), male(X).
sibling(X,Y):- parent(Z,X), parent(Z,Y), not(X=Y).
sister(X,Y):- sibling(X,Y), female(X).
brother(X,Y):- sibling(X,Y), male(X).
cousin(X,Y):- parent(A,X), parent(B,Y), sibling(A,B), not(A=B).
