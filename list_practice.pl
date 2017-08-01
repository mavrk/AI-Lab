appendList([],List,List).
appendList([Head|Tail],List2,[Head|Result]):- appendList(Tail,List2,Result).

