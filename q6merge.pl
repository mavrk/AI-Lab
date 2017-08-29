splitlist(L, [], L, 0).
splitlist([H|T], [H|A], B, N) :- Nminus1 is N-1, splitlist(T, A, B, Nminus1).

halfhalf(L, A, B) :- length(L, Len), Half is Len//2, splitlist(L, A, B, Half).

mrg(A, [], A).
mrg([], B, B).
mrg([Ha|Ta], [Hb|Tb], R) :- Ha =< Hb, merge(Ta, [Hb|Tb], M), R = [Ha|M].
mrg([Ha|Ta], [Hb|Tb], R) :- Ha > Hb, merge(Tb, [Ha|Ta], M), R = [Hb|M].

msort([], []).
msort([E], [E]).
msort([H1, H2], [H1, H2]) :- H1 =< H2.
msort([H1, H2], [H2, H1]) :- H1 > H2.
msort(L, R) :- halfhalf(L, A, B), msort(A, Asort), msort(B, Bsort), mrg(Asort, Bsort, R).



