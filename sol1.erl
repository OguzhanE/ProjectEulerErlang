-module (sol1).
-export ([answer/0]).

%% answer: 233168
answer()->
	sum().

sum()->
	Sum3 = sumOfMultiples(0, 3, 3),
	Sum5 = sumOfMultiples(0, 5, 5),
	Sum15 = sumOfMultiples(0, 15, 15),
	Res = Sum3+Sum5-Sum15,
	Res.

sumOfMultiples(LastSum, Numb, Increase) when Numb >= 1000 ->
	LastSum;

sumOfMultiples(LastSum, Numb, Increase)->
	sumOfMultiples(LastSum+Numb, Numb+Increase, Increase).
