-module(demolambda).
-export([render/2,start/1,trace/1]).


start(Message)->
    try
        render(Message,"i")
    catch
        oops            ->got_throw_oops;
        throw:Other     ->
            io:format("throw:Other : "),
            {got_throw,Other};
        exit:Reason     ->
            io:format("exit:Reason : "),
            {got_exit,Reason};
        error:Reason    ->
            io:format("error:Reason : "),
            {got_error,Reason}
    after
        io:format("the same function as finally in java ")
    end.

render(Item,Em)->
    to_html(Item,
        fun(Text)->
            "<" ++ Em ++ ">" ++ Text ++ "</" ++ Em ++ ">" 
        end).

to_html(Item,F)->F(Item).


trace(Message)->
    % do_something(Message).
    try
        do_something(Message)
    catch
        Class:Reason ->
            Trace = erlang:get_stacktrace(),
            case analyze_exc(Class,Reason) of
                true  ->
                    io:format("analyze_exc - true : ~n" ),
                    handle_exc(Class,Reason,Trace);
                false ->
                    io:format("~n" ),
                    io:format("analyze_exc - false : ~n" ),
                    io:format(Message ),
                    erlang:raise(Class,Reason,Trace)
            end
    end.

analyze_exc(Class,Reason)->
    io:format("analyze_exc Class: ~w ,Reason: ~w. END ~n",[Class,Reason]),
    true.


handle_exc(Class,Reason,Trace) ->
    io:format("handle_exc Class: ~w. Reason: ~w. Trace:~n",[Class,Reason]),
    io:format("~p~n",[Trace]),
    io:format("END~n").

do_something(Message) ->
    io:format("do_something :~n"),
    io:format(Message),
    io:format("do_something END ~n").
