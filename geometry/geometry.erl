-module(geometry).
-export([test/0, area/1]).

area({rectangle, Width, Ht}) -> Width * Ht;
area({square, X}) -> X * X;
area({circle, R}) -> 3.14159 * area({square, R}).

test() ->
	12 = area({rectangle, 3, 4}),
	144 = area({square, 12}),
	tests_worked.
