-module(mylists).
-export([sum/1, qsort/1]).

sum([H|T]) -> H + sum(T);
sum([]) -> 0.

qsort([]) -> [];
qsort([P|T]) ->
	qsort([X || X <- T, X < P])
	++ [P] ++
	qsort([X || X <- T, X >= P]).
