%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 二月 2017 10:44
%%%-------------------------------------------------------------------
-module(tut6).
-author("cujamin").

%% API
-export([list_max/1]).

list_max([Head|Rest])->
  list_max(Rest,Head).

list_max([],Res)->
  Res;
list_max([Head|Rest],Result_so_far)when Head>Result_so_far ->
  New_result_far = Head,
  list_max(Rest,New_result_far);
list_max([Head|Rest],Result_so_far)->
  list_max(Rest,Result_so_far).