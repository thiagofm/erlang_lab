-module(hof).
-compile(export_all).

fold(F, List) -> fold(F, List, 0).

fold(_, [], Result) -> Result;
fold(F, [H|T], Result) -> fold(F, T, F(H, Result)).

sum(Summand, Total) -> Summand + Total.
