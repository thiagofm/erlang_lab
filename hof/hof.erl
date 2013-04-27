-module(hof).
-compile(export_all).

fold(F, List) -> fold(F, List, 0).
fold(_, [], Result) -> Result;
fold(F, [H|T], Result) -> fold(F, T, F(H, Result)).

filter(F, List) -> lists:reverse(filter(F, List, [])).
filter(_, [], List) -> List;
filter(F, [H|T], List) ->
  case F(H) of
    true -> filter(F, T, [H|List]);
    false -> filter(F, T, List)
  end.

map(F, List) -> lists:reverse(map(F, List, [])).
map(_, [], Acc) -> Acc;
map(F, [H|T], Acc) ->
  map(F, T, [F(H)|Acc]).

sum(Summand, Total) -> Summand + Total.
