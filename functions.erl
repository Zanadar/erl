-module(functions).
-compile(export_all).

head([H|_]) -> H.
second([_, X|_]) -> X.

beach(Temperature) ->
  case Temperature of
    {celsius, N} when N >= 20, N =< 45 ->
      'Favorable';
    {farenheit, N} when N >= 68, N =< 113 ->
      'scientifically favorable';
    {kelvin, N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    _ ->
      'avoid beach'
  end.

duplicate(0,_) ->
  [];
duplicate(N, Term) when N > 0 ->
  [Term|duplicate(N-1, Term)].

tail_duplicate(N, Term) ->
  tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) ->
  List;
tail_duplicate(N, Term, List) when N > 0 ->
  tail_duplicate(N-1, Term, [Term|List]).

tail_reverse(L) -> tail_reverse(L, []).

tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T, [H|Acc]).
