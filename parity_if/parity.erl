-module(parity).
-export([even_or_odd/1]).

even_or_odd(X) ->
  if X rem 2 =/= 0 -> odd;
    true -> even
  end.
