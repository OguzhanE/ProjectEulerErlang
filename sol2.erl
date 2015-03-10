-module (sol2).
-export ([answer/0]).

%% answer: 4613732
answer()->
	solve().

solve()->
	fibonacci(1, 2, 0).
	

fibonacci(Numb1, Numb2, Sum) ->
	if
		Numb2 >= 4000000 ->
			Sum;
		Numb2 rem 2 == 0 ->
			fibonacci(Numb2, Numb1+Numb2, Sum+Numb2);
		true ->
			fibonacci(Numb2, Numb1+Numb2, Sum)
	end.
	
