bsort(List,Sorted):-
 swap(List,List1),!,
 bsort(List1,Sorted).

bsort(Sorted,Sorted).

swap([X,Y|Rest], [Y,X|Rest]):-
 greater(X,Y).

swap([Z|Rest],[Z|Rest1]):-
 swap(Rest,Rest1).

greater(X,Y):- X > Y.
