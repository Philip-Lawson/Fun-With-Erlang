-module(geometry).
-export([test/0, area/1]).

test() ->
   12 = area({rectangle, 3, 4}),
   25 = area({square, 5}),
   tests_worked.

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side})             -> Side * Side;
area({circle, Radius})           -> math:pi() * math:pow(Radius, 2).
