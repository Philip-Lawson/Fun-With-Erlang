-module(shop).
-export([test/0, cost/1, cost_of_list/1, cost_list_comp/1]).
-import(lists, [map/2, sum/1]).

test() ->
   2 = cost(apple),
   3 = cost_of_list([{apple, 1},{orange, 1}]),
   3 = cost_list_comp([{apple, 1},{orange, 1}]),
   0 = cost_of_list([]),
   test_worked.

cost(apple)  -> 2;
cost(orange) -> 1;
cost(paper)  -> 3;
cost(bread)  -> 1.5.

cost_of_list(L) ->sum(map(fun({Item,N}) -> cost(Item) * N end, L)).

cost_list_comp(L) ->
   lists:sum([cost(Item) * N || {Item, N} <- L]).
