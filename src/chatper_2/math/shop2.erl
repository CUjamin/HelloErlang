%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 二月 2017 12:00
%%%-------------------------------------------------------------------
-module(shop2).
-author("cujamin").

%% API
-export([total/1]).
-import(math,[map/2,sum/1]).

total(L)->math:sum(L).