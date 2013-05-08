-module(reverse_polish_notation).
-export([rpn/1]).

rpn(Str) ->
  string:tokens(Str, " ").
