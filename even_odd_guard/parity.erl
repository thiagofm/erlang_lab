-module(parity).
-export([odd/1, even/1]).

odd(X) when X rem 2 =/= 0 -> true;
odd(_) -> false.

even(X) when X rem 2 =:= 0 -> true;
even(_) -> false.
