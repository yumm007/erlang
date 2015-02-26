-module(mylists).
-export([sum/1, qsort/1, pythag/1, perms/1, max/2]).

sum([H|T]) -> H + sum(T);
sum([]) -> 0.

qsort([]) -> [];
qsort([P|T]) ->
	qsort([X || X <- T, X < P])
	++ [P] ++
	qsort([X || X <- T, X >= P]).

pythag(N) ->
	[{A, B, C} ||
		A <- lists:seq(1, N),
		B <- lists:seq(1, N),
		C <- lists:seq(1, N),
		A + B > C, A + C > B, B + C > A,
		A*A + B*B =:= C*C
	].

perms([]) -> [[]];
perms(L) -> [[H|T] || H <- L, T <- perms(L--[H])].

max(X,Y) when X > Y -> X;
max(X,Y) -> Y.
