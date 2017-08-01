supervisor(watson,johnson).
supervisor(watson,john).
supervisor(watson,banker).
supervisor(johnson,smita).
supervisor(john,evens).
supervises(X,Y):- supervisor(Y,X).


