-module(recsum).
-export([gauss/1]).

gauss(0) -> 0;
gauss(1) -> 1;
gauss(N) -> N + gauss(N-1).
