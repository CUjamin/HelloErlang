%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 二月 2017 10:11
%%%-------------------------------------------------------------------
-module(tut5).
-author("cujamin").

%% API
-export([format_temps/1]).

format_temps([])-> %%NO out for an empty list
  ok;
format_temps([City|Rest])->
  print_temp(convert_to_celsius(City)),
  format_temps(Rest).

convert_to_celsius({Name,{c,Temp}})-> %%NO conversion needed
  {Name,{c,Temp}};
convert_to_celsius({Name,{f,Temp}})-> %%Do the conversion
  {Name,{c,(Temp-32)*5/9}}.

print_temp({Name,{c,Temp}})->
  io:format("~-15w ~w c~n",[Name,Temp]).


