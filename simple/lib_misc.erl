-module(lib_misc).
-export([qsort/1, pythag/1, ditu/0]).

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
			A + B + C =< N,
			A * A + B * B =:= C * C
		  ].

ditu() ->
		  lists:usort([{A, B, C, D, E} ||
		  	A <- [red, green, blue],
		  	B <- [red, green, blue],
		  	C <- [red, green, blue],
		  	D <- [red, green, blue],
		  	E <- [red, green, blue],
			A /= B, A /= C, A /= D,	  
			B /= C, 
			C /= D, C /= E,	  
			D /= E	  
 		]).

