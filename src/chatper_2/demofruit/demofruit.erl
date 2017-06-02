-module(demofruit).
-export([isFruit/1]).

isFruit(X)->
	test(X,[a,b,c]).

test(X,L)->
	lists:member(X,L).

