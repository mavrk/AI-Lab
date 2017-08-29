adj(1,[2,3,6,7]).
adj(2,[4]).
adj(3,[5]).
adj(4,[5]).
adj(5,[]).
adj(6,[8,9,10]).
adj(7,[]).
adj(8,[]).
adj(9,[]).
adj(10,[7]). 
 
search(X,[H|T]):- X=H,write(X).
 
search(X,[H|T]):- X\=H,adj(H,C),append(T,C,R),print(R),nl,search(X,R).
search(X,[H|T]):- X\=H,adj(H,C),search(X,T).
  
bfs(X):-   append([1],[],L),print(L),nl,search(X,L).
