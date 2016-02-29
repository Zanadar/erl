-module(word_count).
-export([count/1]).

count(N) -> count(N, 1).

count([], Acc) -> Acc;
count([H|T], Acc) ->
  if H =:= 32 -> count(T, Acc+1);
     H =/= 32 -> count(T, Acc)
  end.
