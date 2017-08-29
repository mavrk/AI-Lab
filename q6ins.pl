isort([A|B], Sorted) :-
isort(B, SortedTail), insert(A, SortedTail, Sorted).

isort([], []).

insert(A, [B|C], [B|D]) :-
A > B, !, insert(A, C, D).

insert(A, C, [A|C]).
