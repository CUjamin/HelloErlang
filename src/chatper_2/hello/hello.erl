-module(hello).
-export([start/0]).
-import(loop,[]).



start() ->
	loop:for(1,10,2,fun(I)->
		io:format("hello~n") end).