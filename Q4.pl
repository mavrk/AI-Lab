person('Ram',15,'Football','Dog').
person('Mohan',11,'Volleyball','Cat').
person('Sohan',25,'Card','Cow').
person('Mahesh',30,'Swimming','Dog').
person('Ravindra',11,'Football','Goat').
person('Rakesh',25,'Volleyball','Cat').
person('Rajeev',15,'Swimming','Dog').
person('Raju',30,'Swimming','Dog').
person('Jaichand',40,'Football','Cow').
person('Vijay',30,'Volleyball','Cat').

disp_name_age_hobby(N,A,H):-person(N,A,H,P).

disp_name_age(N,H):-person(N,A,H,P).

child(N):-person(N,A,H,P),A<16.

like(N1,N2):-
person(N1,A1,H1,P1),person(N2,A2,H2,P2),A1<16,A2<16,not(A1=A2),H1=H2.


tol_child(X):-findall(N,child(N),Ans),length(Ans,X).
get_child(X,Y):- child(X),tol_child(Y).