-module(odd_even_case).
-export([parity/1]).

parity(X) ->
  case X of
    X rem 2 =/= 0 -> odd;
    X rem 2 =:= 0 -> even
  end.

