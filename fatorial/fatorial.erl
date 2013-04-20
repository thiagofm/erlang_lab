-module(fatorial).
-export([fat/1]).

fat(0) -> 0;
fat(1) -> 1;
fat(N) -> N * fat(N-1).
