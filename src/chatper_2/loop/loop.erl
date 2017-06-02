%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. 二月 2017 15:13
%%%-------------------------------------------------------------------
-module(loop).
-author("cujamin").

%% API
-export([for/4,for/2,fortest/0]).

%%for(I,M,E,FUN)
for(I,M,E,FUN)->
  if E>=0 ->
      forin(I,M,E,FUN);
    E=<0 ->
      forde(I,M,E,FUN)
    end.

%%for(L,FUN)
for(L,FUN)->
  lists:filter(FUN,L).

forin(I,MAX,STEP,FUN)->
  if I>MAX->
    io:format("error:i>max;please check I,MAX,E");
    I+STEP=<MAX->
      [FUN(I)|for(I+STEP,MAX,STEP,FUN)];
    I+STEP>MAX->
      [FUN(I)]
  end.

forde(I,MIN,STEP,FUN)->
  if I<MIN->
    io:format("error:i<min;please check I,MIN,E");
    I+STEP>=MIN->
      [FUN(I)|for(I+STEP,MIN,STEP,FUN)];
    I+STEP<MIN->
      [FUN(I)]
  end.
%%test for
fortest()->
%%  for(1,-10,-3,fun(I)->I*2 end).
  for(1,10,2,fun(I)->io:format("hello~n") end).
%%%%while(B,BOOLEAN,FUN)
%%while(I,BOOLEAN,ITERATION,FUN)->
%%  if BOOLEAN==true->
%%      [FUN(I)|while(I,BOOLEAN,ITERATION,FUN)]
%%  end.
%%
%%

%%%%test while
%%whiletest()->
%%  while(1,bool(1)<10,iteration(1),result(1)).
%%bool(I)->
%%  I+1.
%%result(I)->
%%  I*10.