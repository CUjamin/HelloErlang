-module(shop1).
-export([cast/1,totle/1]).

cast(orange)	->5;
cast(newspaper)	->8;
cast(apple) 	->2;
cast(pear)		->9;
cast(milk)		->7.

totle([{What,N}|T])	->cast(What)*N+totle(T);
totle([]) ->0.