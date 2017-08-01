inRoom(monkey).
inRoom(chair).
inRoom(stick).
inRoom(banana).
dexterous(monkey).
tall(chair).
strong(monkey).
climb(monkey, chair).
at(ceiling, banana).
move(monkey, chair).
under(banana, chair):- move(monkey,chair).
canreach(banana, monkey):- at(ceiling, banana), under(banana, chair), climb(monkey,chair).

canget(X,Y):- canreach(Y,X),dexterous(X),inRoom(X),inRoom(Y).



