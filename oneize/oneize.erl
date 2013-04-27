-module(oneize).
-export([oneize/1]).

oneize([]) -> [];
oneize([_|T]) -> [1|oneize(T)].
