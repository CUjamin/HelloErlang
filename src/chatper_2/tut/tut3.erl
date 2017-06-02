%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 二月 2017 9:27
%%%-------------------------------------------------------------------
-module(tut3).
-author("cujamin").

%% API
-export([convert_length/1]).

convert_length({centimeter,X})->
  {inch,X/2.54};
convert_length({inch,Y})->
  {centimeter,Y*2.54}.
