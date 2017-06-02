%%%-------------------------------------------------------------------
%%% @author cujamin
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 二月 2017 11:46
%%%-------------------------------------------------------------------
-module(math).
-author("cujamin").

%% API
-export([sum/1,map/2,qsort/1,pythag/1,perms/1]).

sum([H|T])->H+sum(T);
sum([])->0.

map(_,[])->[];
%%map(FUN,[H|T]) ->[FUN(H)|map(FUN,T)].
map(FUN,L)->[FUN(X)||X<-L].

qsort([])->[];
qsort([H|T])->qsort([X||X<-T,X<H]) ++ [H] ++ qsort([X||X<-T,X>=H]).

pythag(N)->[{A,B,C}||A<-lists:seq(1,N),B<-lists:seq(1,N),C<-lists:seq(1,N),A+B+C=<N,A*A+B*B=:=C*C].

perms([])->[[]];
perms(L)->[[H|T] ||H<-L,T<-perms(L--[H])].