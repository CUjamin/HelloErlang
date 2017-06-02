%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 二月 2017 11:14
%%%-------------------------------------------------------------------
-module(tut8).
-author("cujamin").

%% API
-export([reverse/1]).

reverse(List) ->
  reverse(List,[]).
%%头插法
reverse([Head|Rest],Reverse_List)->
  reverse(Rest,[Head|Reverse_List]);
reverse([],Reverse_List)->
  Reverse_List.
