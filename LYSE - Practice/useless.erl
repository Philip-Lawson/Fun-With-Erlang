-module(useless).
-export([add/2, byTwo/1, hello/0, doEverything/1]).

%% Redundant comment.
%% Just practicing.
%% Adds two numbers together.
add(A,B) -> 
     A + B.

byTwo(X) -> 
     X * 2.

hello() ->
     io:format("Hello World!~n"). 


doEverything(X) ->
     hello(),
     io:format("Plus One: ~p~n",[add(X,1)]),
     io:format("By Two: ~p~n", [byTwo(X)]).